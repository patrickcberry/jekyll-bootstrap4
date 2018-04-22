---
layout: resume_default
menuId: MenuResume
resumeSectionId: ResumeProjects
title: Resume
permalink: /resume/projects.html
---

<div class="alert alert-warning">
  <div class="">
    <h4 class="alert-heading">Note: </h4>
    <p class="">This page to be removed at the conclusion of initial development.</p>
  </div>
</div>

## List of all projects

{% for item in site.projects %}
  <h3>{{ item.title }}</h3>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url }}">{{ item.title }}</a></p>
{% endfor %}
