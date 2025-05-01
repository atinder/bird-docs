---
layout: default
title: Bird Documentation
---

# Bird Documentation

Welcome to the Bird documentation. This site contains comprehensive guides and documentation for the Bird app.

## Documentation Sections

{% assign docs_by_category = site.pages | where_exp: "item", "item.path contains 'docs/'" | group_by_exp: "item", "item.path | split: '/' | slice: 1 | first" %}
{% for category in docs_by_category %}

### {{ category.name | capitalize | replace: "-", " " }}

{% assign docs_by_section = category.items | group_by_exp: "item", "item.path | split: '/' | slice: 2 | first" %}
{% for section in docs_by_section %}

#### {{ section.name | capitalize | replace: "-", " " }}

{% for doc in section.items %}
- [{{ doc.title }}]({{ site.baseurl }}{{ doc.url }})
{% endfor %}

{% endfor %}
{% endfor %} 