---
layout: distill
title: Handling references and citations
description: A cheatsheet for handling (importing/organizing/converting/exporting) citations at the correct format
date: 2021-03-23

authors:
  - name: givasile
    url: "https:givasile.github.io"
    affiliations:
      name: ATHENA Research Center

# Below is an example of injecting additional post-specific styles.
# If you use this post as a template, delete this _styles block.
_styles: >
  .fake-img {
    background: #bbb;
    border: 1px solid rgba(0, 0, 0, 0.1);
    box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 12px;
  }
  .fake-img p {
    font-family: monospace;
    color: white;
    text-align: left;
    margin: 12px 0;
    text-align: center;
    font-size: 16px;
  }

---

### Working pipeline

In most case the working pipeline is: **Import -> Process/Clean/Organize -> Export**. Let's see which tools are usefool by step.

Spoiler: it is possible to enter a quickly references to MS Word.

#### Importing 

When importing, you just want to convert it to a standarized format (e.g. BibTex) for processing them in an appropriate envoronment (i.e. Mendeley). In this step, the only difficult scenario is to have bibliography in plain-text and want to convert to BibTex, for example:

_Abu-El-Haija, S., Perozzi, B., Al-Rfou, R., and Alemi, A. (2017). Watch your step: Learning node embeddings via graph attention. Available at: https://arxiv.org/abs/1710.09599._

Use one of the following online plain-text parsers:

  * [anystyle](https://anystyle.io/): just-copy paste and extract as BibTex. Can convert >1000 citations at once. It also offers an intermediate step, where you can manually edit if a citation is not parsed well.
  * [refhive](https://www.refhive.com/): just-copy paste and extract in BibTex. It has a limit of 50 References each time


#### Process/Clean/Organize

Use either Mendeley (best IMHO) or jabref. Mendeley has three major advantages; (a) it has an amazing _update information_ tool - basically if only the title matches, it correctly updates all other fields (e.g Authors, year, journal, DOI etc) (b) it finds/merges duplicates accurately (c) it is very quick and efficient.


#### Export
Mendeley supports extracting as BibTex, RIS, EndNote XML and formatted citation. If you want any other format (like MSDOS 2007 XML, for microsoft word), extract it as BibTex and then import it in jabref.

Normally, you want to export it in a format usable for a document creator environment, namely _Latex_ or _MS Word_. For _latex_, the default format is BibTex, so everything is simple. The difficult case is _MS Word_ that accepts a weird format of XML (MSDOS 2007). So, open jabref and File -> Export -> Files -> Save as MSDOS 2007. Then open Word and References -> Manage Sources -> Browse -> Load xml -> import bibliography.

