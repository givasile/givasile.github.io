---
layout: page
title: Online Courses
permalink: /courses/
nav: false
display_categories: [work, fun]
horizontal: false
dropdown: true
importance: 1
---

Summer Schools:
{% for project in site.courses %}
{% if project.tag == 'summer_school' %}
* [{{ project.title }}]({{ project.url }})
{% endif %}
{% endfor %}

Online Courses:

{% for project in site.courses %}
{% if project.tag == 'online_course' %}
* [{{ project.title }}]({{ project.url }})
{% endif %}
{% endfor %}


