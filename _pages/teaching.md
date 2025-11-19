---
layout: page
title: teaching
permalink: /teaching/
nav: true
nav_order: 2
---

<style>
.teaching-container {
  max-width: 800px;
  margin: 0;
}

.course-item {
  margin-bottom: 2.5rem;
  padding-bottom: 2rem;
  border-bottom: 1px solid #e5e7eb;
}

.course-item:last-child {
  border-bottom: none;
}

.course-header {
  display: flex;
  align-items: baseline;
  gap: 0.75rem;
  margin-bottom: 0.5rem;
  flex-wrap: wrap;
}

.course-title {
  font-size: 1.25rem;
  font-weight: 600;
  color: #1f2937;
  margin: 0;
}

.role-badge {
  background-color: #dbeafe;
  color: #1e40af;
  padding: 0.15rem 0.6rem;
  border-radius: 4px;
  font-size: 0.8rem;
  font-weight: 500;
}

.course-meta {
  color: #6b7280;
  font-size: 0.95rem;
  margin-bottom: 0.75rem;
}

.course-description {
  color: #374151;
  line-height: 1.6;
  margin-bottom: 0.75rem;
}

.course-links {
  display: flex;
  gap: 0.75rem;
  flex-wrap: wrap;
}

.course-link {
  display: inline-block;
  padding: 0.4rem 0.9rem;
  background-color: #2563eb;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-size: 0.9rem;
  transition: background-color 0.2s;
}

.course-link:hover {
  background-color: #1d4ed8;
  color: white;
}

.course-link.private {
  background-color: #9ca3af;
  cursor: not-allowed;
}

.course-link.private:hover {
  background-color: #9ca3af;
}

@media (max-width: 640px) {
  .course-title {
    font-size: 1.1rem;
  }
  .course-header {
    flex-direction: column;
    gap: 0.5rem;
    align-items: flex-start;
  }
}
</style>

<div class="teaching-container">

<div class="course-item">
  <div class="course-header">
    <h3 class="course-title">Bayesian Analysis Course (BAC) @ 2025 </h3>
    <span class="role-badge">Instructor</span>
  </div>
  
  <div class="course-meta">
    June 2025 · Online · MSc students<br>
    Provided by <a href="https://www.essentialds.de/" target="_blank">Essential Data Science Training</a> (LMU spin-off)
  </div>
  
  <div class="course-description">
    Introductory yet rigorous course covering Bayesian modeling and inference (priors/posteriors), MCMC, Laplace approximation, and variational inference.
  </div>
  
  <div class="course-links">
    <a href="https://github.com/givasile/BAC" class="course-link" target="_blank">Repository</a>
  </div>
</div>

<div class="course-item">
  <div class="course-header">
    <h3 class="course-title">Mediterranean Machine Learning School (M2LSS) @ 2023 </h3>
    <span class="role-badge">Instructor</span>
  </div>
  
  <div class="course-meta">
    June 2023 · Thessaloniki, Greece<br>
    Organized by Google DeepMind
  </div>
  
  <div class="course-description">
    Taught the Large Language Models module: foundations, architectures, and hands-on implementation. Participants built an LLM agent using JAX and Haiku.
  </div>
  
  <div class="course-links">
    <a href="https://github.com/M2Lschool/tutorials2023-dev" class="course-link" target="_blank">Course Material</a>
    <a href="https://github.com/givasile/tutorials2023-dev" class="course-link" target="_blank">My Fork</a>
  </div>
</div>

<div class="course-item">
  <div class="course-header">
    <h3 class="course-title">Artificial Intelligence and Applications in IoT @ 2023 </h3>
    <span class="role-badge">Co-Instructor</span>
  </div>
  
  <div class="course-meta">
    Spring 2023 · Athens, Greece<br>
    MSc in Data Science & AI @ <a href="https://msc.dit.hua.gr/en/ai/" target="_blank">HUA</a>
  </div>
  
  <div class="course-description">
    Topics: supervised/unsupervised learning, deep learning for structured & image data, sequence modeling, and reinforcement learning applications for IoT.
  </div>
  
  <div class="course-links">
    <span class="course-link private">Private repo</span>
  </div>
</div>

<div class="course-item">
  <div class="course-header">
    <h3 class="course-title">Airflow Seminar @ 2024</h3>
    <span class="role-badge">Co-Instructor</span>
  </div>
  
  <div class="course-meta">
    Fall 2024 · Athens, Greece<br>
    MSc Informatics @ <a href="https://www.di.uoa.gr/en/studies/graduate/cs" target="_blank">University of Athens</a>
  </div>
  
  <div class="course-description">
    In-depth workshop on Apache Airflow. Students learned how to design, schedule, and monitor production-grade data workflows using DAGs and custom operators.
  </div>
  
  <div class="course-links">
    <a href="https://github.com/tzerefos/airflow-seminar" class="course-link" target="_blank">Repository</a>
  </div>
</div>

</div>
