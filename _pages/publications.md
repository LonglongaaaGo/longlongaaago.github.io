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
</div>

<div class="wl-pub-snapshot" aria-label="Publication snapshot">
  <div class="wl-pub-metrics">
    <div class="wl-pub-metric">
      <strong>{{ site.publications | size }}</strong>
      <span>Publications</span>
    </div>
    <div class="wl-pub-metric">
      <strong>8</strong>
      <span>Lead-author works</span>
    </div>
    <div class="wl-pub-metric">
      <strong>4</strong>
      <span>IEEE Transactions</span>
    </div>
    <div class="wl-pub-metric">
      <strong>2</strong>
      <span>Flagship conferences</span>
    </div>
  </div>

  <div class="wl-pub-focus">
    <span>Generative AI</span>
    <span>Image Editing & Inpainting</span>
    <span>Restoration & Super-Resolution</span>
    <span>Multimodal Learning</span>
    <span>Medical / Assistive Vision</span>
    <span>Recognition & Applied CV</span>
  </div>
</div>

<div class="wl-toolbar">
  {% if author.googlescholar %}
    <a href="{{ author.googlescholar }}"><i class="fas fa-graduation-cap" aria-hidden="true"></i>Google Scholar</a>
  {% endif %}
  <a href="{{ '/cv/' | relative_url }}"><i class="fas fa-file-alt" aria-hidden="true"></i>CV</a>
  <a href="{{ '/' | relative_url }}"><i class="fas fa-home" aria-hidden="true"></i>Home</a>
</div>

<div class="wl-publication-list">
  {% for post in site.publications reversed %}
    {% include archive-single.html %}
  {% endfor %}
</div>
