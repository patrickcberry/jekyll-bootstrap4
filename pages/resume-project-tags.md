---
layout: resume_default
menuId: MenuResume
resumeSectionId: ResumeProjects
title: Resume Project Tags
permalink: /resume/project-tags.html
---

<div class="container">

<div class="row">
<div class="col-md-12">            
<div markdown="1">

### Tags

<!-- List all Tags -->

{% capture project_tags %}
  {% for page in site.projects %}
    {% for project_tag in page.project-tags %}
      {{project_tag|strip}}
      {% unless forloop.last %},{% endunless %}
    {% endfor %}
    {% unless forloop.last %},{% endunless %}
  {% endfor %}
{% endcapture %}

{% assign full_project_tags_array = project_tags | split:',' %}

{% assign project_tags_array = full_project_tags_array[1] | strip %}

{% for t in full_project_tags_array %}
  {% unless project_tags_array contains t %}
    {% capture project_tags_array %}{{project_tags_array}}|{{t|strip}}{% endcapture %}
  {% endunless %}
{% endfor %}

{% assign tags = project_tags_array | split: '|' | uniq | sort %}

<div class="tags-list">
  {% for tag in tags %}
    {% unless tag == '' %}
      <a href="#{{ tag | slugify }}" class="tag-link">
        <span class="tag-name">{{ tag }}</span>
        <!-- Count not available for porject tags
        <span class="tag-count">{{ site.tags[tag] | size }}</span>
        -->
      </a>
    {% endunless %}
  {% endfor %}
</div>

<hr>

<!-- Links for Tag -->

{% for tag in tags %}
<div id="{{ tag | slugify }}" class="posts-for-tag">
  <h3>{{ tag }}</h3>
  <ul>
    {% for page in site.projects %}
      {% capture ts %}{% for t in page.project-tags %}{{ t }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
      {% assign tag_array = ts | split:',' %}
      {% if tag_array contains tag %}
        <li>
          <!--<h5>-->
            <a href="{{ site.baseurl }}{{ page.url }}">
              {{ page.title }}
              <!--
              <small>{{ page.date | date_to_string }}</small>
              -->
            </a>
          <!--</h5>-->
        </li>
      {% endif %}
    {% endfor %}
  </ul>
</div>
{% endfor %}




</div> <!-- Markdown -->
</div> <!-- col -->
</div> <!-- row -->

</div>
