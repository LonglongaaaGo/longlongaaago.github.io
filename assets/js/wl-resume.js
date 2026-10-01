(function () {
  'use strict';
  var viewer = document.querySelector('[data-resume-viewer]');
  if (!viewer) return;
  var tabs = Array.prototype.slice.call(viewer.querySelectorAll('[data-resume-tab]'));
  var panels = Array.prototype.slice.call(viewer.querySelectorAll('[data-resume-document]'));
  var positions = {};
  var tablist = viewer.querySelector('.wl-resume-tabs');
  tablist.setAttribute('role', 'tablist');
  tablist.hidden = false;

  function showPage(panel, index) {
    var pages = Array.prototype.slice.call(panel.querySelectorAll('[data-resume-page]'));
    index = Math.max(0, Math.min(index, pages.length - 1));
    positions[panel.id] = index;
    pages.forEach(function (page, number) { page.hidden = number !== index; });
    panel.querySelector('[data-page-status]').textContent = 'Page ' + (index + 1) + ' of ' + pages.length;
    panel.querySelector('[data-page-previous]').disabled = index === 0;
    panel.querySelector('[data-page-next]').disabled = index === pages.length - 1;
    panel.querySelector('.wl-resume-expand').href = pages[index].href;
  }

  function activate(id) {
    if (!panels.some(function (panel) { return panel.id === id; })) id = panels[0].id;
    tabs.forEach(function (tab) {
      var active = tab.getAttribute('data-resume-tab') === id;
      tab.setAttribute('aria-selected', String(active));
      tab.tabIndex = active ? 0 : -1;
    });
    panels.forEach(function (panel) {
      panel.hidden = panel.id !== id;
      if (!panel.hidden) showPage(panel, positions[id] || 0);
    });
  }

  tabs.forEach(function (tab, index) {
    var id = tab.getAttribute('data-resume-tab');
    tab.setAttribute('role', 'tab');
    tab.setAttribute('aria-controls', id);
    tab.addEventListener('click', function (event) {
      event.preventDefault();
      activate(id);
      window.history.replaceState(null, '', '#' + id);
    });
    tab.addEventListener('keydown', function (event) {
      var next;
      if (event.key === 'ArrowRight') next = (index + 1) % tabs.length;
      else if (event.key === 'ArrowLeft') next = (index + tabs.length - 1) % tabs.length;
      else if (event.key === 'Home') next = 0;
      else if (event.key === 'End') next = tabs.length - 1;
      else return;
      event.preventDefault();
      tabs[next].click();
      tabs[next].focus();
    });
  });

  panels.forEach(function (panel) {
    panel.setAttribute('role', 'tabpanel');
    panel.setAttribute('aria-labelledby', 'tab-' + panel.id);
    panel.tabIndex = 0;
    panel.querySelector('.wl-resume-pager').hidden = false;
    panel.querySelector('[data-page-previous]').addEventListener('click', function () { showPage(panel, positions[panel.id] - 1); });
    panel.querySelector('[data-page-next]').addEventListener('click', function () { showPage(panel, positions[panel.id] + 1); });
  });
  viewer.classList.add('is-ready');
  activate(window.location.hash.slice(1));
  window.addEventListener('hashchange', function () { activate(window.location.hash.slice(1)); });
})();
