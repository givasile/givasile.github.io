---
layout: distill
title: Reinforcing Multi-Scale Analysis For Depth Estimation
description: Side-project that was implemented as an extension of the MSc Thesis "Stereo Vision using Artificial Neural Networks"
img: /assets/img/stereo_vision_extension1.png
category: work
importance: 1
authors:
  - name: Vasileios Gkolemis
    url: "https://givasile.github.io/"
    affiliations:
      name: Aristotle University of Thessaloniki
  - name: Anastasios Delopoulos
    url: "https://mug.ee.auth.gr/people/anastasios-delopoulos/"
    affiliations:
      name: Aristotle University of Thessaloniki
---

- The pdf presenting the project can be found [here]({{ site.url }}/assets/pdf/auth_thesis_extension.pdf)
- the github repository [here](https://github.com/givasile/stereo_vision_project)

---

**Abstract**

Convolutional neural networks exhibit exceptional performance in
predicting depth from stereo images. However, this performance comes
with two essential drawbacks (a) they consume extraordinary
computational power (clusters of GPUs) even for a single prediction
and (b) their memory and computational demand are predefined from the
training phase, hence they cannot be adjusted to the available
resources on-demand. For confronting these problems, we propose a
scalable CNN architecture (MSNet), adjustable to the specific
requirements of each application; it can reduce its computational
demands by sacrificing some precision or target for high accuracy if
more resources are available. The bias towards accuracy or efficiency
can be determined at test time, without any need for retraining. For
achieving such scalability, we adopted the basic ideas of scale-space
theory and incorporated them into the MSNet architecture. MSNet
exhibits challenging performance comparing to the state-of-the-art
methods in the SceneFlow dataset, even though it uses considerably
less learnable parameters.
