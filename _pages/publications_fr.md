---
layout: single
title: "Travaux de recherche"
permalink: /fr/publications/
redirect_from:
  - /fr/publications_fr/
lang: fr
ref: publications
---
## <span class="accent">Publications</span>
<div class="publications-list">
  {% assign pubs = site.publications | where:"lang","fr" %}
  {% for pub in pubs %}
    <div class="publication-item">
      <a href="{{ pub.paperurl }}"><strong>{{ pub.title }}</strong></a>
      {% if pub.co-authors %}<br><strong>Co-auteurs:</strong> {{ pub.co-authors }}{% endif %}
      {% if pub.journal %}<br><strong>Revue:</strong> {{ pub.journal }}{% endif %}
      {% if pub.date %}<br><strong>Date:</strong> {% include date_localized.html date=pub.date lang=page.lang format='long' capitalize=true %}{% endif %}
      {% if pub.excerpt %}<br><strong>A propos:</strong> {{ pub.excerpt }}{% endif %}
      {% if pub.paperurl %}<br><a href="{{ pub.paperurl }}" target="_blank"><span class="accent">Lire l'article</span></a>{% endif %}
      {% if pub.workingpaperurl %}<br><a href="{{ pub.workingpaperurl | relative_url }}" target="_blank"><span class="accent">Document de travail</span></a>{% endif %}
    </div>
    <br>
  {% endfor %}
</div>

<hr class="section-divider">

## <span class="accent">Documents de travail</span>
Bientôt disponible !!
