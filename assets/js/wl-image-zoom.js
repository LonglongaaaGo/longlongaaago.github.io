(function($) {
  $(function() {
    var $content = $(".page__content");
    if (!$content.length) {
      return;
    }

    var $zoomButtons = $();

    $content.find("img").each(function() {
      var $img = $(this);
      if ($img.closest(".wl-zoom-wrap, .wl-no-zoom").length) {
        return;
      }

      var src = $img.attr("src");
      if (!src) {
        return;
      }

      var alt = $img.attr("alt") || "Image";
      var href = $img.parent("a").attr("href") || src;

      if ($img.parent("a").length) {
        $img.parent("a").wrap('<span class="wl-zoom-wrap"></span>');
      } else {
        $img.wrap('<span class="wl-zoom-wrap"></span>');
      }

      var $wrap = $img.closest(".wl-zoom-wrap");
      var $button = $('<a class="wl-zoom-button" href="#">Expand</a>');
      $button.attr({
        "href": href,
        "aria-label": "Expand image: " + alt,
        "title": "Expand image"
      });

      $wrap.append($button);
      $zoomButtons = $zoomButtons.add($button);
    });

    if ($.fn.magnificPopup && $zoomButtons.length) {
      $zoomButtons.magnificPopup({
        type: "image",
        tLoading: "Loading image #%curr%...",
        gallery: {
          enabled: true,
          navigateByImgClick: true,
          preload: [0, 1]
        },
        image: {
          tError: '<a href="%url%">Image #%curr%</a> could not be loaded.'
        },
        removalDelay: 500,
        mainClass: "mfp-zoom-in",
        callbacks: {
          beforeOpen: function() {
            this.st.image.markup = this.st.image.markup.replace("mfp-figure", "mfp-figure mfp-with-anim");
          }
        },
        closeOnContentClick: true,
        midClick: true
      });
    }
  });
})(jQuery);
