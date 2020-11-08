---
layout: distill
title: Stereo Vision Using artificial neural networks
description: MSc Electrical and Computer Engineering, Aristotle University of Thessaloniki (2017)
img: /assets/img/stereo_vision.jpg
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

* The thesis pdf can be found [here]({{ site.url }}/assets/pdf/auth_thesis.pdf)
* A 2-page summary [here]({{ site.url }}/assets/pdf/auth_summary.pdf)
* A slides-presentation [here]({{ site.url }}/assets/pdf/auth_presentation.pdf)
* the github repository [here](https://github.com/givasile/ece-auth-thesis)

(above documents are in greek)

***

**Abstract**

Extracting depth information from a stereo pair is an open problem of the computer
vision domain. In the present project, we propose a method for the accurate detection
of corresponding points in the rectified views, using artificial neural network. We
approach the problem of choosing the correct disparity of every point in the reference
image as a multi-label classification problem and we train the neural net in a suitably
configured training set. Initialization of cost matrix from the neural net is followed by
the stereoscopic method which is composed of the following steps: cost aggregation,
semi-global matching, detection and readjustment of outliers. The whole method
is evaluated at well-known stereo datasets, such as KITTI 2012, KITTI 2015 and
Middlebury.

***

**Περίληψη**

Η εξαγωγή πληροφορίας βάθους από ένα στερεοσκοπικό ζεύγος είναι ένα ανοικτό πρόβλη-
μα της υπολογιστικής όρασης. Στην παρούσα εργασία προτείνεται η χρήση μηχανικής
μάθησης και συγκεκριμένα τεχνητού νευρωνικού δικτύου για την ποιοτικότερη εύρεση
των «αντίστοιχων σημείων» στις δύο λήψεις. Προσεγγίζουμε το πρόβλημα της επιλο-
γής κατάλληλης τιμής παράλλαξης ως πρόβλημα ταξινόμησης πολλαπλών κατηγοριών και
εκπαιδεύουμε το νευρωνικό δίκτυο σε κατάλληλα διαμορφωμένο σετ εκπαίδευσης. Με-
τά την αρχικοποίηση του πίνακα κόστους από το νευρωνικό δίκτυο, εφαρμόζουμε την
στερεοσκοπική μέθοδο που συνίσταται στα εξής βήματα: άθροιση κόστους, ημικαθολική
αντιστοίχηση, εντοπισμό κι αναπροσαρμογή εξωκείμενων τιμών. Αξιολογούμε τα αποτε-
λέσματα της μεθόδου στις γνωστότερες στερεοσκοπικές συλλογές: KITTI 2012, KITTI
2015 και Middlebury.