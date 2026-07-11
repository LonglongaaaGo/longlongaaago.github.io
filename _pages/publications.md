---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: false
hide_title: true
---

{% include base_path %}

<div class="wl-page-hero">
  <p class="wl-page-kicker">// publications</p>
  <h1>Research Publications</h1>
  <p>A complete, curated publication record spanning generative vision, image restoration, image editing, pattern recognition, and applied machine learning. Citation metrics are maintained on Google Scholar.</p>
  <a class="wl-page-hero-button" href="https://scholar.google.com/citations?view_op=list_works&hl=en&hl=en&user=TuxCf4UAAAAJ"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
</div>

<div class="wl-pub-tabs" aria-label="Publication overview">
  <div class="wl-pub-tabbar wl-pub-tabbar-primary">
    <span class="wl-pub-tab is-active">
      <strong>{{ site.publications | size }}</strong>
      <span>All Publications</span>
    </span>
    <span class="wl-pub-tab">
      <strong>8</strong>
      <span>Lead-Author Works</span>
    </span>
    <span class="wl-pub-tab">
      <strong>4</strong>
      <span>IEEE Transactions</span>
    </span>
    <span class="wl-pub-tab">
      <strong>2</strong>
      <span>Flagship Conferences</span>
    </span>
  </div>

  <div class="wl-pub-tabbar wl-pub-tabbar-secondary" aria-label="Research areas">
    <span class="wl-pub-tab-note">Research Areas</span>
    <span class="wl-pub-topic is-active">Generative AI</span>
    <span class="wl-pub-topic">Image Editing & Inpainting</span>
    <span class="wl-pub-topic">Restoration & Super-Resolution</span>
    <span class="wl-pub-topic">Multimodal Learning</span>
    <span class="wl-pub-topic">Medical / Assistive Vision</span>
    <span class="wl-pub-topic">Recognition & Applied CV</span>
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
