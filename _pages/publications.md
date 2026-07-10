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
  <p>Selected journal, conference, and preprint publications spanning generative vision, image restoration, image editing, pattern recognition, and applied machine learning.</p>
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
