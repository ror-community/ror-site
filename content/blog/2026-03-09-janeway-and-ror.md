+++ 
title = "Janeway and ROR: Putting the Author Experience First" 
date = "2026-03-04T09:03:37-05:00"
draft = false 
tags = ["Janeway", "Publishing"] 
categories = ["Case Studies"] 
archives = ["2026"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.jpg" 
thumb = "/img/blog/janeway/olh-janeway-logo.png" 
images = ['/img/blog/janeway/olh-janeway-logo.png']
authors = ["Joseph Muller"] 
description = "Joe Muller of the Open Library of Humanities tells us in this case study how and why the Janeway platform took the time to integrate ROR in a way that reduces the burden of data entry for authors, ensuring unambiguous author affiliations by retrieving ROR IDs from ORCID profiles as well as allowing authors to find their institution with a ROR-powered search."
doi = ""
crosspost = ""
+++ 

<!-- Commonly used content 

{{< figure src="/img/blog/" class="featured-figure" alt="" >}}

{{< callout color="green" icon="fa-info" >}} 
{{< /callout >}}

{{< figure src="/img/blog/" class="blog-figure" alt="" >}}

{{< youtube id="XXX" title="" >}}

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 

{{< figure src="/img/blog/janeway/" alt="" >}}

-->

{{< figure src="/img/blog/janeway/olh-janeway-logo.png" class="featured-figure" alt="Open Library of Humanities and Janeway logo." >}}


Joe Muller, Senior Publishing Technologies Developer at the [Open Library of Humanities](https://www.openlibhums.org/), tells us in this case study how and why the [Janeway](https://www.openlibhums.org/site/janeway/) platform uses ROR, ensuring unambiguous author affiliations by retrieving ROR IDs from ORCID profiles as well as allowing authors to find their institution with a ROR-powered search.

---

As an open-access, scholar-led publisher, the Open Library of Humanities (OLH) should do everything we can to make metadata from our platform Janeway works seamlessly across the wide spectrum of places where published works might be discovered, read, and archived. The Research Organization Registry (ROR) provides the key to identifying authors of those works unambiguously, through the magic of uniform resource identifiers (URIs).

In the diamond open-access (OA) funding landscape, ROR also provides a key to understanding fair funding streams. Do the employers of Janeway authors contribute to Janeway’s development via membership in the OLH? Or are there imbalances, where institutions with a lot of Janeway authors and a lot of wealth do not contribute to a part of the diamond OA ecosystem they benefit from? We can crunch the data to find out if we have unambiguous ways to link up a majority of articles in Janeway with their authors’ institutions.

## How Janeway makes it easy for authors to use ROR

On Janeway, you interact with ROR when you record your institutional affiliation(s). Most often, that’s when you submit an article to be published on Janeway. You can search for the name or acronym of your institution to choose the correct ROR record. We display the institution’s name variants, location, website, and a link to the original record on the ROR website to help with tricky cases of identifying the right organization. You can put in multiple affiliations, and you can also enter a job title, department, and start and end dates, for most journals.

{{< figure src="/img/blog/janeway/" alt="screenshot of interface where you can search for your affiliation" >}}


It’s even simpler if you have an ORCID with a public profile. Use the ORCID option to register on Janeway, and we will pull your latest public affiliation. If the affiliation has a ROR ID on ORCID, which most of them do, it will have a ROR ID on Janeway.

{{< figure src="/img/blog/janeway/" alt="screenshot of login screen with Register with ORCID highlighted" >}}


{{< figure src="/img/blog/" alt="screenshot of a complete author record with the ROR-linked affiliation" >}}

After publication, the ROR ID will be included in structured metadata streams such as Crossref DOI records, JATS XML files, and OAI-PMH feeds.

{{< figure src="/img/blog/janeway/janeway-ror-crossref-doi.png" alt="Crossref DOI metadata including ROR ID for an article published with Janeway." caption="The Crossref DOI metadata for an article in the Walt Whitman Quarterly Review includes ROR IDs for author affiliations. See https://api.crossref.org/works/https://doi.org/10.17077/0737-0679.34889.">}}

{{< figure src="/img/blog/janeway/janeway-ror-article-display.png" alt="Article landing page on the Janeway platform showing the ROR ID for the author affiliation." caption="A link to the ROR ID is also displayed next to the author's affiliation on the landing page for the article at https://doi.org/10.17077/0737-0679.34889." >}}

Scholars have to wade through so many digital systems to get their work done, funded, published, and recognized, that they have understandable fatigue with learning new systems.

If we make it easy for authors to include ROR IDs in their Janeway affiliations, they will. On the other hand, if we expect them to do careful data entry for a purpose that is only really clear in light of some abstract library science concepts (URIs and metadata interoperability), they may skip it. This is why we bring RORs over automatically from public ORCID profiles.

Of course, once the ROR-linked affiliation is in Janeway, we give authors ample time to see what it looks like in Janeway and make manual edits if needed. Most authors are very happy that it is there--they have already made the decision to make it public on their ORCID profile--and it is an extra bonus that they did not have to manually enter it again.

{{< figure src="/img/blog/janeway/" alt="screenshots of Janeway screens where you can edit your affiliations" >}}

## How Janeway integrated ROR

Our design process started as usual with user stories. Janeway editors talked to us about the features they wanted to see, and how they wanted them to work, as did librarians who manage Janeway installations at their institutions.

{{< figure src="/img/blog/janeway/" alt="picture of wireframe from our early design process" >}}

In this case, once we had a sense of user requirements, developer Steph Driver and technology director Andy Byers mocked up a few new possibilities for the author submission page. These went through several design reviews: our technology team, which included our UX researcher Katherine Parker-Hay and our publishing technologies librarian Siobhan Haime, thought through the implications for usability, accessibility, systems design, security, and maintainability.

I then got stuck in on actual implementation, beginning with porting our old data to the new data model, writing an interface for backwards compatibility, and creating a command-line interface for server administrators to load the ROR data dump into their Janeway installation and set it up to automatically update every month, with several engineering reviews by Andy and senior developer Mauro Sanchez. I then wrote the new interface, incorporating a feature to implement the Contributor Roles Taxonomy (CRediT) started by Martin Paul Eve at the same time. I also wrote tools for auto-matching existing affiliations with ROR records. Finally, we made sure ROR data in Janeway sees the light of day, by updating our DOI deposits, metadata streams, reader interface, and plugins.


{{< figure src="/img/blog/janeway/" alt="diagram of data model? or maybe a chart showing the top institutions behind OLH journal article authors?" >}}


In the end, implementing ROR was absolutely worthwhile, and also a lot of work. This was not because of ROR--the ROR data and documentation are exemplary--but rather because of the need to balance an expanded Janeway data model with backwards compatibility for existing bulk import tools. We also needed to let any user enter and edit custom institution names as before, in case they do not yet exist in ROR, but keep them from changing the ROR-linked records in Janeway, since those names are provided by the ROR authority records automatically loaded in.


{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 




