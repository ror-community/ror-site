+++
title = "ROR Development Update: Building and Growing an Open Registry of Organizations"
date = "2019-07-02"
draft = false
tags = ["Implementation", "MVR", "Prototype", "GRID"]
categories = ["Technical News"]
archives = ["2019"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/banners/building-sq.jpg"
authors = ["Maria Gould"]
doi = "https://doi.org/10.71938/60v1-bk26"

+++

ROR is an open registry for every research organization in the world, aiming to solve the problem of identifying which organizations are affiliated with which research outputs. [When the ROR MVR (minimum viable registry) launched in January](https://ror.org/blog/2019-02-10-announcing-first-ror-prototype/), the registry included records for 91,000+ organizations, each with a unique ROR ID.

Since getting the MVR up and running, ROR development updates have been focused on enhancing the technical implementation of the registry. We have now released a shiny new codebase completely rewritten in Python. As before, the code is completely open source and available via [Github](http://www.github.com/ror-community).

A key aspect to this recent update is a new mechanism to synchronize ROR with the GRID database, which provided the seed data for the 91,000+ records that populated the original ROR MVR. This means that we can incorporate updated record metadata from GRID without overwriting existing ROR IDs. For new entries added to GRID, we can automatically create a corresponding record in ROR and assign a new ROR ID. ROR records will continue to include crosswalks to GRID IDs, and GRID will implement a similar mapping process in the coming months. GRID and ROR will ultimately diverge, but these crosswalks will ensure ongoing interoperability.

With this new sync process in place, the ROR registry has now grown to 96,000+ organizations! This reflects the latest version of the GRID database [released in May](https://grid.ac/downloads). We're storing the output in a Github repo, and we'll be making a public data dump available soon.

We have also implemented some other technical adjustments to make ROR data more usable and useful, such as refining search functionality, making error messages consistent, and fixing bugs related to paging and filtering. There's a lot of other work we're excited to tackle next, such as adding additional metadata to ROR records and matching affiliation strings to ROR IDs.

ROR is a community project, and we welcome all sorts of collaborators. We encourage anyone and everyone to use and contribute to the code. And let us know what you think!
