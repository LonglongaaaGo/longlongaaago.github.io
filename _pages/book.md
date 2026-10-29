---
layout: archive
permalink: /book/
title: "Books"
excerpt: "Books by Wanglong Lu, with reading editions and companion learning materials."
author_profile: false
hide_title: true
---

<div class="wl-page-hero">
  <p class="wl-page-kicker">// books</p>
  <h1>Books</h1>
  <p>My books, with reading editions, companion code and teaching data.</p>
</div>

<div class="wl-blog-list">
  {% assign books = site.data.books | sort: 'year' | reverse %}
  {% for book in books %}
    <div class="list__item">
      <article class="archive__item">
        <h2 class="archive__item-title"><a href="{{ book.url | relative_url }}">{{ book.title | escape }}</a></h2>
        <p><em>{{ book.subtitle | escape }}</em></p>
        <p class="page__meta">{{ book.year }} · {{ book.access | escape }}</p>
        <p class="archive__item-excerpt">{{ book.description | escape }}</p>
        <p><a href="{{ book.url | relative_url }}">Read, download and practice →</a>{% if book.pdfs.zh %} · <a href="{{ book.url | relative_url }}?lang=zh#read-online" lang="zh-CN">中文</a>{% endif %}</p>
      </article>
    </div>
  {% endfor %}
</div>
