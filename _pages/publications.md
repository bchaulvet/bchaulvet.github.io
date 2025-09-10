---
layout: single
title: "Publications"
permalink: /publications/
---

<div class="publications-list">
  {% for pub in site.publications %}
    <div class="publication-item">
      <a href="{{ pub.paperurl }}"><strong>{{ pub.title }}</strong></a>
      {% if pub.co-authors %}<br><strong>Co-authors:</strong> {{ pub.co-authors }}{% endif %}
      {% if pub.journal %}<br><strong>Journal:</strong> {{ pub.journal }}{% endif %}
      {% if pub.date %}<br><strong>Date:</strong> {{ pub.date | date: "%B %d, %Y" }}{% endif %}
      {% if pub.excerpt %}<br><strong>About:</strong> {{ pub.excerpt }}{% endif %}
      {% if pub.paperurl %}<br><a href="{{ pub.paperurl }}" target="_blank">Read the paper</a>{% endif %}
      {% if pub.workingpaperurl %}<br><a href="{{ pub.workingpaperurl }}" target="_blank">Working Paper</a>{% endif %}
    </div>
    <br>
  {% endfor %}
</div>
