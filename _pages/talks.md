---
layout: page
permalink: /talks/
title: Talks
description: My Presentations and Talks in reversed chronological order.
years: [2021]
nav: true
nav_order: 2
---

<!-- _pages/talks.md -->
<div class="publications">

{%- for y in page.years %}
<h2 class="year">{{y}}</h2>
{% bibliography -f talks -q @*[year={{y}}]* %}
{% endfor %}

</div>
