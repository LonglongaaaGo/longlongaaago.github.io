/* Embedded book reader. PDF rendering, text selection and navigation use PDF.js. */
(function () {
  'use strict';

  document.querySelectorAll('[data-book-reader]').forEach(function (reader) {
    var frame = reader.querySelector('[data-reader-frame]');
    var status = reader.querySelector('[data-reader-status]');
    var download = reader.querySelector('[data-reader-download]');
    var open = reader.querySelector('[data-reader-open]');
    var fullscreen = reader.querySelector('[data-reader-fullscreen]');
    var buttons = Array.from(reader.querySelectorAll('[data-reader-language]'));
    var language = 'en';
    var generation = 0;
    var background = [];
    var previousOverflow = '';
    var labels = {
      en: { loading: 'Loading the English edition…', download: 'Download PDF', open: 'Open PDF in a new tab', full: 'Full screen', exit: 'Exit full screen', error: 'Use “Open PDF” to continue reading.' },
      zh: { loading: '正在加载中文版…', download: '下载 PDF', open: '在新标签页阅读 PDF', full: '全屏阅读', exit: '退出全屏', error: '可选择“在新标签页阅读 PDF”继续阅读。' }
    };

    function updateFullscreenLabel() {
      var expanded = document.fullscreenElement === reader || reader.classList.contains('is-expanded');
      fullscreen.textContent = expanded ? labels[language].exit : labels[language].full;
      fullscreen.setAttribute('aria-expanded', String(expanded));
    }

    function focusable(container) {
      if (!container) return [];
      return Array.from(container.querySelectorAll('button:not([disabled]), a[href], input:not([disabled]), select:not([disabled]), iframe, [tabindex]:not([tabindex="-1"])')).filter(function (element) {
        return element.getClientRects().length > 0 && !element.closest('[hidden]');
      });
    }

    function closeExpanded() {
      reader.classList.remove('is-expanded');
      reader.removeAttribute('role');
      reader.removeAttribute('aria-modal');
      background.forEach(function (entry) { entry.element.inert = entry.inert; });
      background = [];
      document.body.style.overflow = previousOverflow;
      updateFullscreenLabel();
      fullscreen.focus();
    }

    function expandInPage() {
      if (reader.classList.contains('is-expanded')) return;
      previousOverflow = document.body.style.overflow;
      reader.classList.add('is-expanded');
      reader.setAttribute('role', 'dialog');
      reader.setAttribute('aria-modal', 'true');
      var branch = reader;
      while (branch.parentElement) {
        Array.from(branch.parentElement.children).forEach(function (element) {
          if (element !== branch) {
            background.push({ element: element, inert: element.inert });
            element.inert = true;
          }
        });
        branch = branch.parentElement;
        if (branch === document.body) break;
      }
      document.body.style.overflow = 'hidden';
      updateFullscreenLabel();
      fullscreen.focus();
    }

    function activate(nextLanguage, updateAddress) {
      language = nextLanguage === 'zh' ? 'zh' : 'en';
      generation += 1;
      var pdf = reader.getAttribute('data-' + language + '-pdf');
      var viewer = new URL(reader.dataset.viewer, document.baseURI);
      viewer.searchParams.set('file', pdf);
      viewer.hash = 'zoom=page-width&pagemode=none';
      buttons.forEach(function (button) {
        button.setAttribute('aria-pressed', String(button.dataset.readerLanguage === language));
      });
      status.textContent = labels[language].loading;
      download.href = pdf;
      download.download = new URL(pdf, document.baseURI).pathname.split('/').pop();
      download.textContent = labels[language].download;
      open.href = pdf;
      open.textContent = labels[language].open;
      frame.title = reader.dataset.title + ' — ' + (language === 'zh' ? '简体中文 PDF' : 'English PDF');
      updateFullscreenLabel();
      frame.src = viewer.href;
      if (updateAddress) {
        var address = new URL(window.location.href);
        if (language === 'zh') address.searchParams.set('lang', 'zh');
        else address.searchParams.delete('lang');
        address.hash = 'read-online';
        window.history.replaceState(null, '', address.href);
      }
    }

    // The official viewer sends this before initialization, allowing the book
    // theme and reading-only configuration to be applied without editing it.
    document.addEventListener('webviewerloaded', function (event) {
      var source = event.detail && event.detail.source;
      if (!source || source !== frame.contentWindow) return;
      var current = generation;
      var currentLanguage = language;
      var options = source.PDFViewerApplicationOptions;
      options.setAll({
        disablePreferences: true,
        viewerCssTheme: 1,
        annotationEditorMode: -1,
        enableScripting: false,
        disableAutoFetch: true,
        disableStream: true,
        localeProperties: { lang: currentLanguage === 'zh' ? 'zh-CN' : 'en-US' }
      });
      var theme = source.document.createElement('link');
      theme.rel = 'stylesheet';
      theme.href = new URL(reader.dataset.theme, document.baseURI).href;
      source.document.head.appendChild(theme);
      source.addEventListener('keydown', function (key) {
        if (!reader.classList.contains('is-expanded')) return;
        if (key.key === 'Escape') {
          key.preventDefault();
          closeExpanded();
        } else if (key.key === 'Tab') {
          var inner = focusable(source.document);
          var outer = focusable(reader);
          if (key.shiftKey && source.document.activeElement === inner[0]) {
            key.preventDefault();
            outer[outer.length - 2].focus();
          } else if (!key.shiftKey && source.document.activeElement === inner[inner.length - 1]) {
            key.preventDefault();
            outer[0].focus();
          }
        }
      });
      var application = source.PDFViewerApplication;
      application.initializedPromise.then(function () {
        if (current !== generation) return;
        application.eventBus.on('pagesinit', function () {
          if (current !== generation) return;
          var pages = application.pdfDocument.numPages;
          status.textContent = currentLanguage === 'zh' ? pages + ' 页' : pages + ' pages';
        });
        application.eventBus.on('documenterror', function () {
          if (current === generation) status.textContent = labels[currentLanguage].error;
        });
      }).catch(function () {
        if (current === generation) status.textContent = labels[currentLanguage].error;
      });
    });

    buttons.forEach(function (button) {
      button.addEventListener('click', function () {
        if (button.dataset.readerLanguage !== language) activate(button.dataset.readerLanguage, true);
      });
    });

    fullscreen.hidden = false;
    fullscreen.addEventListener('click', function () {
      if (reader.classList.contains('is-expanded')) closeExpanded();
      else expandInPage();
    });
    reader.addEventListener('keydown', function (key) {
      if (!reader.classList.contains('is-expanded')) return;
      if (key.key === 'Escape') {
        key.preventDefault();
        closeExpanded();
      } else if (key.key === 'Tab' && key.shiftKey) {
        var outer = focusable(reader);
        if (document.activeElement === outer[0]) {
          key.preventDefault();
          var inner = focusable(frame.contentDocument);
          (inner[inner.length - 1] || outer[outer.length - 1]).focus();
        }
      }
    });
    document.addEventListener('fullscreenchange', updateFullscreenLabel);
    activate(new URLSearchParams(window.location.search).get('lang'), false);
  });
})();
