---
layout: resume_default
menuId: MenuResume
resumeSectionId: ResumeProjects
title: Resume
permalink: /resume/projects.html
---

<div class="alert alert-danger">
  <div class="">
    <h4 class="alert-heading">Incomplete page: </h4>
    <p class="">This page to be completed prior to deployment.</p>
    <p>To be completed:</p>
    <ul>
      <li>Display template for project</li>
      <li>Categories and tags on projects</li>
      <li>Filter project by tags and/or categories</li>
    </ul>
  </div>
</div>


## List of all projects

{% for item in site.projects %}
  <h3>{{ item.title }}</h3>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url }}">{{ item.title }}</a></p>
{% endfor %}
