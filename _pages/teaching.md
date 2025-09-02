---
layout: archive
title: "Teaching"
permalink: /teaching/
author_profile: true
---

<div class="teaching-list">
  {% for teach in site.teaching %}
    <div class="teaching-item">
      <strong>{{ teach.title }}</strong>
      {% if teach.coursetitle %}<br><strong>Course:</strong> {{ teach.coursetitle }}{% endif %}
      {% if teach.professors %}<br><strong>Professors:</strong> {{ teach.professors }}{% endif %}
      {% if teach.date %}<br><strong>Date:</strong> {{ teach.date | date: "%B %d, %Y" }}{% endif %}
      {% if teach.excerpt %}<br><strong>About:</strong> {{ teach.excerpt }}{% endif %}
      {% if teach.materialurl %}<br><a href="{{ teach.materialurl }}" target="_blank">Course Material</a>{% endif %}
    </div>
    <br>
  {% endfor %}
</div>