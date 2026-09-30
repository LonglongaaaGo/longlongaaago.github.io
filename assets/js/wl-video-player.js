(function () {
  "use strict";

  function bindDismiss(dialog, onClose) {
    dialog.querySelector(".wl-video-close").addEventListener("click", function () {
      dialog.close();
    });
    dialog.addEventListener("click", function (event) {
      var bounds = dialog.getBoundingClientRect();
      if (event.target === dialog && (event.clientX < bounds.left || event.clientX > bounds.right || event.clientY < bounds.top || event.clientY > bounds.bottom)) {
        dialog.close();
      }
    });
    dialog.addEventListener("close", function () {
      if (!document.querySelector(".wl-video-dialog[open]")) document.body.classList.remove("wl-video-playing");
      onClose();
    });
  }

  var wechatDialog = document.getElementById("wechat-channel");
  if (wechatDialog && typeof wechatDialog.showModal === "function") {
    var wechatTrigger;
    document.addEventListener("click", function (event) {
      var link = event.target.closest("[data-wechat-channel]");
      if (!link || event.button !== 0 || event.ctrlKey || event.metaKey || event.shiftKey || event.altKey) return;
      event.preventDefault();
      wechatTrigger = link;
      wechatDialog.showModal();
      document.body.classList.add("wl-video-playing");
    });
    bindDismiss(wechatDialog, function () {
      if (wechatTrigger) wechatTrigger.focus();
    });
  }

  var dialog = document.getElementById("video-player");
  if (!dialog || typeof dialog.showModal !== "function") return;

  var container = dialog.querySelector(".wl-video-player-frame");
  var title = dialog.querySelector("#video-player-title");
  var external = dialog.querySelector(".wl-video-external");
  var trigger;

  function embedFor(url) {
    var parsed;
    try {
      parsed = new URL(url);
    } catch (error) {
      return null;
    }
    var host = parsed.hostname.toLowerCase();
    var id;
    if (host === "youtube.com" || host === "www.youtube.com" || host === "m.youtube.com" || host === "youtu.be") {
      id = host === "youtu.be" ? parsed.pathname.slice(1) : parsed.searchParams.get("v");
      if (!id) id = parsed.pathname.match(/^\/(?:embed|shorts)\/([^/]+)/);
      if (Array.isArray(id)) id = id[1];
      if (!id || !/^[A-Za-z0-9_-]{11}$/.test(id)) return null;
      return { url: "https://www.youtube-nocookie.com/embed/" + id + "?autoplay=1&rel=0", platform: "YouTube" };
    }
    if (host === "bilibili.com" || host === "www.bilibili.com") {
      id = parsed.pathname.match(/^\/video\/(BV[A-Za-z0-9]+)/);
      if (!id) return null;
      return { url: "https://player.bilibili.com/player.html?bvid=" + id[1] + "&autoplay=1", platform: "Bilibili" };
    }
    return null;
  }

  document.addEventListener("click", function (event) {
    var link = event.target.closest("[data-video-play]");
    if (!link || event.button !== 0 || event.ctrlKey || event.metaKey || event.shiftKey || event.altKey) return;
    var embed = embedFor(link.href);
    if (!embed) return;
    event.preventDefault();
    trigger = link;
    title.textContent = link.getAttribute("data-video-title") || "Video";
    external.href = link.href;
    external.replaceChildren(document.createTextNode("Open on " + embed.platform + " "));
    var icon = document.createElement("i");
    icon.className = "fas fa-external-link-alt";
    icon.setAttribute("aria-hidden", "true");
    external.appendChild(icon);
    var frame = document.createElement("iframe");
    frame.src = embed.url;
    frame.title = title.textContent;
    frame.allow = "autoplay; encrypted-media; picture-in-picture; fullscreen";
    frame.allowFullscreen = true;
    frame.referrerPolicy = "strict-origin-when-cross-origin";
    container.replaceChildren(frame);
    dialog.showModal();
    document.body.classList.add("wl-video-playing");
  });

  bindDismiss(dialog, function () {
    container.replaceChildren();
    if (trigger) trigger.focus();
  });
})();
