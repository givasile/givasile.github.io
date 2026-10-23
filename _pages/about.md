---
layout: about
title: about
permalink: /
subtitle: 

profile:
  align: right
  image: 
  image_circular: true # crops the image to make it circular
  address: 

news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
selected_talks: false # includes a list of papers marked as "selected={true}"
social: true  # includes social icons at the bottom of the page
---

<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">

<style>
.timeline {
  position: relative;
  max-width: 930px;
  margin: 40px 0;
}

.timeline-item {
  position: relative;
  padding-left: 120px;
  padding-bottom: 40px;
}

.timeline-item:last-child {
  padding-bottom: 0;
}

.timeline-item::before {
  content: '';
  position: absolute;
  left: 10px;
  top: 0;
  bottom: -40px;
  width: 2px;
  background: var(--global-text-color-light);
}

.timeline-image {
  position: absolute;
  left: 30px;
  top: 5px;
  width: 75px;
  height: 75px;
  border-radius: 10%;
  object-fit: cover;
  background: #fff;
  border: 1px solid var(--global-bg-color);
  box-shadow: 0 0 0 2px var(--global-theme-color);
  z-index: 2;
}


.timeline-item:last-child::before {
  display: none;
}

.timeline-marker {
  position: absolute;
  left: 0;
  top: 5px;
  width: 20px;
  height: 20px;
  border-radius: 50%;
  background: var(--global-theme-color);
  border: 3px solid var(--global-bg-color);
  box-shadow: 0 0 0 2px var(--global-theme-color);
}

.timeline-content {
  padding: 15px 20px;
  background: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid var(--global-theme-color);
}

html[data-theme="dark"] .timeline-content {
  background: var(--global-code-bg-color);
}

.timeline-title {
  font-weight: bold;
  font-size: 1.2em;
  margin-bottom: 8px;
  color: var(--global-theme-color);
}

.timeline-period {
  font-size: 0.9em;
  color: var(--global-text-color-light);
  font-style: italic;
  margin-bottom: 8px;
}

.timeline-description {
  color: var(--global-text-color);
  line-height: 1.6;
}

.profile-header {
  display: flex;
  align-items: flex-start;
  gap: 30px;
  margin-bottom: 40px;
  flex-wrap: wrap;
}

.profile-image {
  flex-shrink: 0;
}

.profile-image img {
  width: 200px;
  height: 200px;
  border-radius: 50%;
  object-fit: cover;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.profile-info {
  flex: 1;
  min-width: 300px;
}

.profile-info h1 {
  margin-top: 0;
  margin-bottom: 15px;
}

.profile-description {
  font-size: 1.1em;
  line-height: 1.6;
  color: var(--global-text-color);
  margin-bottom: 20px;
}

.social-icons {
  display: flex;
  gap: 15px;
  font-size: 1.5em;
}

.social-icons a {
  color: var(--global-text-color-light);
  transition: color 0.3s;
}

.social-icons a:hover {
  color: var(--global-theme-color);
}

</style>


<div class="profile-header">
  <div class="profile-image">
    <img src="assets/img/prof_pic.jpg" alt="Vasilis Gkolemis">
  </div>
  <div class="profile-info">
    <h1>Vasilis Gkolemis</h1>
    <div class="profile-description">
      PhD in Explainable AI @ <a href="https://dit.hua.gr/index.php/en/">DIT/HUA</a> <br>
      Research Assistant @ <a href="https://www.athenarc.gr/en">ATHENA RC</a> <br>
      Working on interpretable machine learning systems 
    </Div>
    <div class="social-icons">
      <a href="https://github.com/{{ site.github_username}}" target="_blank" title="GitHub"><i class="fab fa-github"></i></a>
      <a href="https://linkedin.com/in/{{ site.linkedin_username }}" target="_blank" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
      <a href="https://scholar.google.com/citations?user={{ site.scholar_userid}}" target="_blank" title="Google Scholar"><i class="ai ai-google-scholar"></i></a>
      <a href="mailto:vasilis.gkolemis@gmail.com" title="Email"><i class="fas fa-envelope"></i></a>
      <a href="https://twitter.com/{{ site.twitter_username}}" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
    </div>
  </div>
</div>

I work at [ATHENA RC](https://maps.app.goo.gl/KwFYJgyK4qkw4W976) and do my PhD at [HUA](https://dit.hua.gr/index.php/en/).
My research is around interpretable ML systems, from explainable AI to simulation-based inference,
supervised by
[Christos Diou](https://diou.github.io/),
[Theodore Dalamagas](https://scholar.google.gr/citations?user=WJOLNAYAAAAJ&hl=en)
and
[Eirini Ntoutsi](https://www.unibw.de/home-en/appointment-of-professors/prof-eirini-ntoutsi).

I keep an interest in probabilistic ML, especially likelihood-free inference,
where I often work with [Michael Gutmann](https://michaelgutmann.github.io/).

I often collaborate on explainability research with [Giuseppe Casalicchio](https://scholar.google.com/citations?user=MHcaZMQAAAAJ&hl=de) and the whole [IML team](https://www.slds.stat.uni-muenchen.de/research/explainable-ai.html) led by [Bernd Bischl](https://scholar.google.com/citations?user=s34UckkAAAAJ&hl=de).

---

I contribute to, and sometimes lead, open-source projects like [Effector](https://github.com/givasile/effector) and [ELFI](https://github.com/elfi-dev/elfi).

---

I publish at and review for conferences like NeurIPS, AISTATS and ECML, and journals like JAI.

---

I believe in [slow science](https://www.slow-science.com/).
The current pace burns people out and buries meaningful research under an avalanche of noise.

---

Personal websites are great, but we don't need more [500-pound websites](https://motherfuckingwebsite.com/).

---


<div class="timeline">

  <div class="timeline-item">
    <div class="timeline-marker"></div>
    <img class="timeline-image" src="assets/img/logo_lmu.png" alt="Image description">
    <div class="timeline-content">
      <div class="timeline-title">Research Visit @ LMU</div>
      <div class="timeline-period">2025 (January - March), 2026 (June - July)</div>
      <div class="timeline-description">
        I mainly developed <a href="https://xai-effector.github.io/">Effector</a>, an eXplainable AI package for tabular data.
        I worked with some people from the IML group, including
        <a href="https://hbaniecki.com/">Hubert Baniecki</a>,
        <a href="https://scholar.google.com/citations?user=8ps2hIIAAAAJ&hl=de">Julia Herbinger</a> and
        <a href="https://scholar.google.com/citations?user=MHcaZMQAAAAJ&hl=de">Giuseppe Casalicchio</a>.
      </div>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-marker"></div>
    <img class="timeline-image" src="assets/img/logo_hua.webp" alt="Image description">
    <div class="timeline-content">
      <div class="timeline-title">PhD in Explainable AI @ DIT-HUA</div>
      <div class="timeline-period">2023 - Present</div>
      <div class="timeline-description">
        Supervised by
        Prof. <a href="https://diou.github.io/">Christos Diou</a>,
        Prof. <a href="https://www.unibw.de/home-en/appointment-of-professors/prof-eirini-ntoutsi">Eirini Ntoutsi</a>, and
        <a href="https://scholar.google.gr/citations?user=WJOLNAYAAAAJ&hl=en">Theodore Dalamagas</a>.<br>
        Researching explainable-by-design models and post-hoc techniques for black-box models,
        with a special focus on explaining deep learning systems trained on tabular data.
      </div>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-marker"></div>
    <img class="timeline-image" src="assets/img/logo_athenarc.png" alt="Image description">    
    <div class="timeline-content">
      <div class="timeline-title">Research Assistant @ ATHENA RC</div>
      <div class="timeline-period">2021 - Present</div>
      <div class="timeline-description">
        Leading research efforts on Explainable AI in projects like
        <a href="https://cordis.europa.eu/project/id/957362">XMANAI</a> and
        <a href="https://www.ai-dapt.eu/">AIDAPT</a>.
        I mainly collaborate with <a href="https://scholar.google.gr/citations?user=WJOLNAYAAAAJ&hl=en">Theodore Dalamagas</a> and its team.
      </div>
    </div>
  </div>


  <div class="timeline-item">
    <div class="timeline-marker"></div>
    <img class="timeline-image" src="assets/img/logo_uoe.webp" alt="Image description">
    <div class="timeline-content">
      <div class="timeline-title">MSc in Data Science @ UoE</div>
      <div class="timeline-period">2019 - 2020</div>
      <div class="timeline-description">
        MSc at the University of Edinburgh, working with
        <a href="https://michaelgutmann.github.io/">Michael Gutmann</a> on likelihood-free inference.<br>
        There, I took two pivotal courses, 
        <a href="https://mlpr.inf.ed.ac.uk/2024/">MLPR</a> (<a href="https://homepages.inf.ed.ac.uk/imurray2/">Ian Murray</a>) and
        <a href="https://opencourse.inf.ed.ac.uk/pmr/2025/">PMR</a> (<a href="https://michaelgutmann.github.io/">Michael Gutmann</a>),
        that shaped my understanding of machine learning.
      </div>
    </div>
  </div>

  <div class="timeline-item">
    <div class="timeline-marker"></div>
    <img class="timeline-image" src="assets/img/logo_auth.png" alt="Image description">    
    <div class="timeline-content">
      <div class="timeline-title">Diploma in Electrical and Computer Engineering @ ECE AUTH</div>
      <div class="timeline-period">2011 - 2017</div>
      <div class="timeline-description">
        5-year Diploma from Aristotle University of Thessaloniki. 
        This is where I got into machine learning, working with 
        <a href="https://scholar.google.com/citations?user=yBp_7EEAAAAJ&hl=en">Anastasios Delopoulos</a> on 
        <a href="https://givasile.github.io/dissertations/1_thesis_auth/">Stereo Vision using Deep Neural Networks.</a>
      </div>
    </div>
  </div>
</div>

---
