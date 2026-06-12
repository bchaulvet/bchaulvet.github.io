---
layout: single
title: ""
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

## <span class="accent">Projets en cours</span>
<div class="publications-list">
  {% assign has_projects = false %}
  {% for project in site.wip %}
    {% if project.lang == page.lang %}
      {% assign has_projects = true %}
      <div class="publication-item" style="padding-left: 1.3em; text-indent: -1.3em;">
        <div style="font-size: 1.1em; font-weight: 700; margin-bottom: 0.5rem;">• {{ project.title }}</div>
        {% if project.co-authors %}<div style="margin-top: 0.35rem; padding-left: 1.3em; text-indent: -1.3em;"><strong>Co-auteurs:</strong> {{ project.co-authors }}</div>{% endif %}
        {% if project.excerpt %}<div style="margin-top: 0.35rem; padding-left: 1.3em; text-indent: -1.3em;"><strong>A propos:</strong> {{ project.excerpt }}</div>{% endif %}
        {% if project.date %}<br><strong>Démarré:</strong> {% include date_localized.html date=project.date lang=page.lang format='long' capitalize=true %}{% endif %}
      </div>
      <br>
    {% endif %}
  {% endfor %}
  {% unless has_projects %}
    <p>Bientôt disponible !!</p>
  {% endunless %}
</div>
