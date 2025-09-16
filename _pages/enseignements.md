---
layout: archive
title: "Enseignements"
permalink: /fr/enseignements/
author_profile: true
lang: fr
ref: teaching
---

<div class="teaching-list">
  {% for teach in site.enseignements %}
    <div class="teaching-item">
      <strong>{{ teach.title }}</strong>
      {% if teach.coursetitle %}<br><strong>Cours:</strong> {{ teach.coursetitle }}{% endif %}
      {% if teach.professors %}<br><strong>Professeurs:</strong> {{ teach.professors }}{% endif %}
      {% if teach.date %}<br><strong>Date:</strong> {% include date_localized.html date=teach.date lang=page.lang format='long' capitalize=true %}{% endif %}
      {% if teach.excerpt %}<br><strong>Sujet:</strong> {{ teach.excerpt }}{% endif %}
      {% if teach.materialurl %}<br><a href="{{ teach.materialurl }}" target="_blank">Supports du cours</a>{% endif %}
    </div>
    <br>
  {% endfor %}
</div>