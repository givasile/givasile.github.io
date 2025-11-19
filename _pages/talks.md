---
layout: page
permalink: /talks/
title: talks
description: 
years: [2023, 2021]
nav: true
nav_order: 3
---

<!-- _pages/talks.md -->
<div class="publications">

{%- for y in page.years %}
<h2 class="year">{{y}}</h2>
{% bibliography -f talks -q @*[year={{y}}]* %}
{% endfor %}

</div>
