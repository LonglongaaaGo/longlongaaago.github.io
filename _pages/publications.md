---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: false
hide_title: true
---

{% include base_path %}

<style>
  #main .wl-pub-tabs {
    background: #f8faf6;
    border: 1px solid #d9ded5;
    border-radius: 8px;
    display: grid;
    gap: 10px;
    margin: -4px 0 20px;
    padding: 10px;
  }

  #main .wl-pub-tabbar {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
  }

  #main .wl-pub-tabbar-primary {
    background: #e9efe9;
    border: 1px solid #d9e2d8;
    border-radius: 8px;
    padding: 6px;
  }

  #main .wl-pub-tab,
  #main .wl-pub-topic {
    align-items: center;
    background: #ffffff;
    border: 1px solid #d9ded5;
    border-radius: 8px;
    box-shadow: 0 1px 2px rgba(36, 48, 42, 0.06);
    color: #20221f;
    cursor: pointer;
    display: inline-flex;
    font-family: inherit;
    justify-content: center;
    line-height: 1.25;
    text-decoration: none;
    transition: background 140ms ease, border-color 140ms ease, color 140ms ease, transform 140ms ease;
  }

  #main .wl-pub-tab {
    flex: 1 1 170px;
    gap: 8px;
    min-height: 46px;
    padding: 8px 12px;
  }

  #main .wl-pub-tab:hover,
  #main .wl-pub-topic:hover {
    border-color: #bfc8bd;
    color: #2c638f;
    text-decoration: none;
    transform: translateY(-1px);
  }

  #main .wl-pub-tab strong {
    color: #2c638f;
    font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
    font-size: 1.05rem;
    line-height: 1;
  }

  #main .wl-pub-tab span {
    font-size: 0.84rem;
    font-weight: 800;
  }

  #main .wl-pub-tab.is-active {
    background: #20221f;
    border-color: #20221f;
    color: #ffffff;
  }

  #main .wl-pub-tab.is-active strong {
    color: #f7c870;
  }

  #main .wl-pub-tabbar-secondary {
    align-items: center;
  }

  #main .wl-pub-tab-note {
    align-items: center;
    color: #626a64;
    display: inline-flex;
    font-family: "SFMono-Regular", Consolas, "Liberation Mono", Menlo, monospace;
    font-size: 0.82rem;
    font-weight: 800;
    min-height: 34px;
    padding: 6px 4px;
  }

  #main .wl-pub-topic {
    font-size: 0.82rem;
    font-weight: 700;
    min-height: 34px;
    padding: 7px 11px;
  }

  #main .wl-pub-topic.is-active {
    background: #20221f;
    border-color: #20221f;
    color: #ffffff;
  }

  #main .wl-pub__item[hidden] {
    display: none;
  }

  #main .wl-pub-filter-status {
    color: #626a64;
    font-size: 0.84rem;
    margin: -8px 0 16px;
  }

  #main .wl-pub-empty {
    background: #f8faf6;
    border: 1px solid #d9ded5;
    border-radius: 8px;
    color: #626a64;
    padding: 22px;
    text-align: center;
  }

  @media (max-width: 540px) {
    #main .wl-pub-tab {
      flex-basis: 100%;
      justify-content: flex-start;
    }

    #main .wl-pub-topic {
      flex: 1 1 100%;
      justify-content: flex-start;
    }
  }
</style>

<div class="wl-page-hero">
  <p class="wl-page-kicker">// publications</p>
  <h1>Research Publications</h1>
  <p>A complete, curated publication record spanning generative vision, image restoration, image editing, pattern recognition, and applied machine learning. Citation metrics are maintained on Google Scholar.</p>
  <a class="wl-page-hero-button" href="https://scholar.google.com/citations?view_op=list_works&hl=en&hl=en&user=TuxCf4UAAAAJ"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
</div>

<div class="wl-pub-tabs" aria-label="Publication overview">
  <div class="wl-pub-tabbar wl-pub-tabbar-primary">
    <button class="wl-pub-tab is-active" type="button" data-filter="all" aria-pressed="true">
      <strong>{{ site.publications | size }}</strong>
      <span>All Publications</span>
    </button>
    <button class="wl-pub-tab" type="button" data-filter="lead-author" aria-pressed="false">
      <strong>8</strong>
      <span>Lead-Author Works</span>
    </button>
    <button class="wl-pub-tab" type="button" data-filter="ieee-transactions" aria-pressed="false">
      <strong>4</strong>
      <span>IEEE Transactions</span>
    </button>
    <button class="wl-pub-tab" type="button" data-filter="flagship-conference" aria-pressed="false">
      <strong>2</strong>
      <span>Flagship Conferences</span>
    </button>
  </div>

  <div class="wl-pub-tabbar wl-pub-tabbar-secondary" aria-label="Research areas">
    <span class="wl-pub-tab-note">Research Areas</span>
    <button class="wl-pub-topic" type="button" data-filter="generative-ai" aria-pressed="false">Generative AI</button>
    <button class="wl-pub-topic" type="button" data-filter="editing-inpainting" aria-pressed="false">Image Editing & Inpainting</button>
    <button class="wl-pub-topic" type="button" data-filter="restoration-sr" aria-pressed="false">Restoration & Super-Resolution</button>
    <button class="wl-pub-topic" type="button" data-filter="multimodal" aria-pressed="false">Multimodal Learning</button>
    <button class="wl-pub-topic" type="button" data-filter="medical-assistive" aria-pressed="false">Medical / Assistive Vision</button>
    <button class="wl-pub-topic" type="button" data-filter="recognition-applied" aria-pressed="false">Recognition & Applied CV</button>
  </div>
</div>

<p class="wl-pub-filter-status" id="publication-filter-status" aria-live="polite"></p>

<div class="wl-toolbar">
  {% if author.googlescholar %}
    <a href="{{ author.googlescholar }}"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
  {% endif %}
  <a href="{{ '/cv/' | relative_url }}"><i class="fas fa-file-alt" aria-hidden="true"></i>CV</a>
  <a href="{{ '/' | relative_url }}"><i class="fas fa-home" aria-hidden="true"></i>Home</a>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    var controls = document.querySelectorAll("[data-filter]");
    var items = document.querySelectorAll(".wl-pub__item");
    var status = document.getElementById("publication-filter-status");
    var empty = document.getElementById("publication-empty");

    function applyFilter(control) {
      var filter = control.getAttribute("data-filter");
      var label = control.textContent.replace(/\s+/g, " ").trim().replace(/^\d+\s*/, "");
      var visible = 0;

      controls.forEach(function (button) {
        var active = button === control;
        button.classList.toggle("is-active", active);
        button.setAttribute("aria-pressed", active ? "true" : "false");
      });

      items.forEach(function (item) {
        var filters = (item.getAttribute("data-publication-filters") || "").split(/\s+/);
        var show = filter === "all" || filters.indexOf(filter) !== -1;
        item.hidden = !show;
        if (show) visible += 1;
      });

      status.textContent = filter === "all"
        ? "Showing all " + visible + " publications."
        : "Showing " + visible + " publications in " + label + ".";
      empty.hidden = visible !== 0;
    }

    controls.forEach(function (control) {
      control.addEventListener("click", function () { applyFilter(control); });
    });

    applyFilter(document.querySelector('[data-filter="all"]'));
  });
</script>

<div class="wl-publication-list" id="publication-list">
  {% for post in site.publications reversed %}
    {% include archive-single.html %}
  {% endfor %}
</div>

<div class="wl-pub-empty" id="publication-empty" hidden>No publications match this filter.</div>
