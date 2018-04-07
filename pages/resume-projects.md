---
layout: resume_default
menuId: MenuResume
resumeSectionId: ResumeProjects
title: Resume
permalink: /resume/projects.html
---

## List of all projects

{% for item in site.projects %}
  <h3>{{ item.title }}</h3>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url }}">{{ item.title }}</a></p>
{% endfor %}
