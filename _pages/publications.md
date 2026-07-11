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
    display: inline-flex;
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
    background: #edf5f7;
    border-color: #c9dfe6;
    color: #2c638f;
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
    <a class="wl-pub-tab is-active" href="#publication-list" aria-label="Show all publications">
      <strong>{{ site.publications | size }}</strong>
      <span>All Publications</span>
    </a>
    <a class="wl-pub-tab" href="#publication-list" aria-label="Jump to lead-author works in the publication list">
      <strong>8</strong>
      <span>Lead-Author Works</span>
    </a>
    <a class="wl-pub-tab" href="#publication-list" aria-label="Jump to IEEE Transactions in the publication list">
      <strong>4</strong>
      <span>IEEE Transactions</span>
    </a>
    <a class="wl-pub-tab" href="#publication-list" aria-label="Jump to flagship conference papers in the publication list">
      <strong>2</strong>
      <span>Flagship Conferences</span>
    </a>
  </div>

  <div class="wl-pub-tabbar wl-pub-tabbar-secondary" aria-label="Research areas">
    <span class="wl-pub-tab-note">Research Areas</span>
    <a class="wl-pub-topic is-active" href="#publication-list">Generative AI</a>
    <a class="wl-pub-topic" href="#publication-list">Image Editing & Inpainting</a>
    <a class="wl-pub-topic" href="#publication-list">Restoration & Super-Resolution</a>
    <a class="wl-pub-topic" href="#publication-list">Multimodal Learning</a>
    <a class="wl-pub-topic" href="#publication-list">Medical / Assistive Vision</a>
    <a class="wl-pub-topic" href="#publication-list">Recognition & Applied CV</a>
  </div>
</div>

<div class="wl-toolbar">
  {% if author.googlescholar %}
    <a href="{{ author.googlescholar }}"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
  {% endif %}
  <a href="{{ '/cv/' | relative_url }}"><i class="fas fa-file-alt" aria-hidden="true"></i>CV</a>
  <a href="{{ '/' | relative_url }}"><i class="fas fa-home" aria-hidden="true"></i>Home</a>
</div>

<div class="wl-publication-list" id="publication-list">
  {% for post in site.publications reversed %}
    {% include archive-single.html %}
  {% endfor %}
</div>
