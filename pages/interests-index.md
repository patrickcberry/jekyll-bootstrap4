---
layout: default
menuId: MenuInterests
title: Interests Index
permalink: /interests/index.html
---
### Index of Interests

Below is a list of interest pages,

{% for item in site.interests %}
  <h4>{{ item.title }}</h4>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url }}">{{ item.title }}</a></p>
{% endfor %}