---
layout: single
title: "Research"
permalink: /publications/
lang: en
ref: publications
---
## Publications
<div class="publications-list">
  {% assign pubs = site.publications | where:"lang","en" %}
  {% for pub in pubs %}
    <div class="publication-item">
      <a href="{{ pub.paperurl }}"><strong>{{ pub.title }}</strong></a>
      {% if pub.co-authors %}<br><strong>Co-authors:</strong> {{ pub.co-authors }}{% endif %}
      {% if pub.journal %}<br><strong>Journal:</strong> {{ pub.journal }}{% endif %}
      {% if pub.date %}<br><strong>Date:</strong> {% include date_localized.html date=pub.date lang=page.lang format='long' %}{% endif %}
      {% if pub.excerpt %}<br><strong>About:</strong> {{ pub.excerpt }}{% endif %}
      {% if pub.paperurl %}<br><a href="{{ pub.paperurl }}" target="_blank">Read the paper</a>{% endif %}
      {% if pub.workingpaperurl %}<br><a href="{{ pub.workingpaperurl | relative_url }}" target="_blank">Working Paper</a>{% endif %}
    </div>
    <br>
  {% endfor %}
</div>

<hr class="section-divider">

## Working Paper
Coming soon!!
