+++
title = "ROR development update: Building and growing an open registry of organizations"
date = "2019-06-21"
draft = false
tags = ["Community", "Implementation", "MVR", "prototype"]
categories = ["updates"]
style = "card-plain"
banner = "/img/banners/PrideofLions.jpg"
thumb = "/img/banners/building-sq.jpg"
author = "Maria Gould"
+++

ROR aims to be an open registry for every research organization in the world. When the ROR MVR (minimum viable registry) [launched in January](/blog/2019-02-10-announcing-first-ror-prototype), the registry included records for 91,000+ organizations, each with a unique ROR ID. Launching the MVR was a huge milestone for the ROR project, but the technical setup involved a few things we wanted to improve upon: 

One issue was that we had written the code for the MVR in Ruby. We had used Ruby for earlier development work and for testing our initial proof of concept for the registry. In order to move as quickly as possible, we adapted the original Ruby code for the production MVR. After launching the MVR, we decided that in order to take on bigger development work in the future and to enable more community collaboration, it would be better to switch from Ruby to Python.

Another task we needed to address was to put a process in place for updating and adding to the ROR registry. A key aspect to this work is synchronizing ROR with the GRID database, which provided the seed data for the 91,000+ records that were in the original ROR MVR. In the short term, we needed a way for ROR to import new and updated records from GRID. In the longer term, the ultimate goal is to manage the ROR database independently, and to feed data from ROR to GRID instead of the other way around.

This week, we released a shiny new codebase completely rewritten in Python. As before, the code is completely open source and available via [Github](https://github.com/ror-community). And we’ve implemented a new update mechanism to synch GRID with ROR, which means that we can incorporate updated metadata from GRID without overwriting existing ROR IDs. For new entries that have been added to GRID, we can automatically create a corresponding record in ROR and assign a new ROR ID. ROR records will continue to include crosswalks to GRID IDs, and GRID will be looking at a similar mapping process in the coming months.

With this new update process in place, the ROR registry has now grown to 96,000+ organizations! This reflects the latest version of the GRID database released in May. We’re storing the output in a Github repo, and we’ll be exploring options for making a public data dump available soon.

One of the additional advantages of this update to the ROR code is that we’ve been able to adjust some other things to make ROR data more usable and useful, such as refining search functionality, making error messages consistent, and fixing bugs related to paging and filtering. There’s a lot of other work we’re excited to tackle next, such as adding additional metadata to ROR records and matching affiliation strings to ROR IDs.

Another advantage to this update is to make the ROR code more usable for the community. ROR is a community project, and we welcome all sorts of collaborators. We encourage you to use and contribute to the code. Let us know what you think!
