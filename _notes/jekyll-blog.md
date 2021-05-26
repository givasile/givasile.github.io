---
layout: distill
title: Jekyll blog
description: Instructions for building a jekyll blog
date: 2021-05-25

authors:
  - name: givasile
    url: "https:givasile.github.io"
    affiliations:
    name: ATHENA Research Center

---

#### General instructions

* posts is a built-in collection, that exists even if `_posts` directory doesn't exist (in this case it is an empty collection)
* posts must be named as `<YEAR-MONTH-DAY-title.markup>` and stored inside the `_path` directory

#### [Permalinks](https://jekyllrb.com/docs/permalinks/)

For defining permalinks we use placeholders e.g `/:day/:month/:title`, if some info is missing the placeholder is ignored. For example if a document doesn't have date it will be stored in `/:title`.

It is possible to define a permalink at:

* document level - at the front-matter. This approach defines the link completely staticly.
* collection level - at `_config.md`, in the collection's definition. The available placeholders are:
  * `:collection` - the name of the collection
  * `:path` - path to the parent dir of the file
  * `:name`: name of the file 
  * `:title`: title of the file as defined in the front-matter (doesn't work in the tests I did, instead it `:name` is used), 
  * `:output_ext` extension of the file
* global level, at `_config.md`. The available placeholders are:
  * some related to the date
  * `:categories` (defined by the directories struvture)
  * `:title` (based on the name of the document)


#### How-To roadmap

* For adding a note: store an `<title>.md` file in the directory `_notes/`


