---
layout: default
title: Bird Documentation
---

# Bird Documentation

Welcome to the Bird documentation. This site contains comprehensive guides and documentation for the Bird app.

## Documentation Sections

{% for doc in site.docs %}
- [{{ doc.title }}]({{ doc.url | relative_url }})
{% endfor %} 