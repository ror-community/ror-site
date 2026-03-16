+++ 
title = "From User Stories to High-Quality Data: Implementing ROR on the Janeway Platform" 
date = "2026-03-17"
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
doi = "https://doi.org/10.71938/e3fb-v153"
crosspost = "https://www.openlibhums.org/news/926/"
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

{{< callout color="green" icon="no-icon" >}} 

## Key quotations 

"In the diamond open-access (OA) funding landscape, ROR ... provides a key to understanding fair funding streams."

"Use the ORCID option to register on Janeway, and we will pull your latest public affiliation. If the affiliation has a ROR ID on ORCID, which most of them do, it will have a ROR ID on Janeway."

"If we make it easy for authors to include ROR-linked affiliations in their Janeway affiliations, they will."

-- Joe Muller, Senior Publishing Technologies Developer at the Open Library of Humanities

{{< /callout >}}

---

As an open-access, scholar-led publisher, the Open Library of Humanities (OLH) should do everything we can to make sure metadata from our platform Janeway works seamlessly across the wide spectrum of places where published works might be discovered, read, and archived. The Research Organization Registry (ROR) provides the key to identifying the author affiliations attached to those works unambiguously, through the magic of uniform resource identifiers (URIs).

**In the diamond open-access (OA) funding landscape, ROR also provides a key to understanding fair funding streams.** Do the employers of Janeway authors contribute to Janeway’s development via membership in the OLH? Or are there imbalances, where institutions with a lot of Janeway authors and a lot of wealth do not contribute to a part of the diamond OA ecosystem they benefit from? We can crunch the data to find out, if we have unambiguous ways to link up a majority of articles in Janeway with their authors’ institutions.


## How Janeway makes it easy for authors to use ROR

On Janeway, you interact with ROR when you record your institutional affiliation(s). Most often, that’s when you submit an article to be published on Janeway. You can search for the name or acronym of your institution to choose the correct ROR record. We display the institution’s name variants, location, website, and a link to the original record on the ROR website to help with tricky cases of identifying the right organization. You can put in multiple affiliations, and you can also enter a job title, department, and start and end dates, for most journals.

{{< figure src="/img/blog/janeway/janeway-ror-search.png"  class="blog-figure" alt="ROR-powered search for an organization in Janeway." caption="You can search for the name or acronym of your institution and choose the correct ROR record." >}}

It’s even simpler if you have an ORCID with a public profile. **Use the ORCID option to register on Janeway, and we will pull your latest public affiliation. If the affiliation has a ROR ID on ORCID, which most of them do, it will have a ROR ID on Janeway.**

{{< figure src="/img/blog/janeway/orcid-login.png" class="blog-figure" alt="ORCID login screen." caption="Logging in with ORCID saves you time and effort in Janeway." >}}

{{< figure src="/img/blog/janeway/janeway-author-information.png" alt="Screenshot of author information pulled from ORCID in Janeway." caption="If you’re a first-time user, Janeway brings your latest public affiliation over from ORCID, including ROR IDs, and then gives you the option to edit it." >}}

After publication, the ROR ID will be included in structured metadata streams such as Crossref DOI records, JATS XML files, and OAI-PMH feeds.

{{< figure src="/img/blog/janeway/janeway-ror-crossref-doi.png" alt="JSON metadata from Crossref API." caption="The Crossref DOI metadata for an article in the Walt Whitman Quarterly Review includes ROR IDs for author affiliations. See [https://api.crossref.org/works/https://doi.org/10.17077/0737-0679.34889](https://api.crossref.org/works/https://doi.org/10.17077/0737-0679.34889)." >}}

{{< figure src="/img/blog/janeway/janeway-ror-article-display.png" alt="Web page for article in the Walt Whitman Review." caption="A link to the ROR ID is also displayed next to the author's affiliation on the landing page for the article at [https://doi.org/10.17077/0737-0679.34889.](https://doi.org/10.17077/0737-0679.34889)." >}}

Scholars have to wade through so many digital systems to get their work done, funded, published, and recognized, that they have understandable fatigue with learning new systems.

**If we make it easy for authors to include ROR-linked affiliations in their Janeway affiliations, they will.** On the other hand, if we expect them to do careful data entry for a purpose that is only really clear in light of some abstract library science concepts (URIs and metadata interoperability), they may skip it, or potentially introduce errors. This is why we not only disallow manual entry of ROR IDs, but also bring ROR IDs over automatically from public ORCID profiles.

Of course, once the ROR-linked affiliation is in Janeway, we give authors ample time to see what it looks like in Janeway and make manual changes if needed. Most authors are very happy that it is there--they have already made the decision to make it public on their ORCID profile--and it is an extra bonus that they did not have to manually enter it again.

{{< figure src="/img/blog/janeway/janeway-affiliations.png" alt="Author affiliations screen in Janeway." caption="You can edit affiliations, add and remove new ones, and re-synchronize with ORCID." >}}


{{< figure src="/img/blog/janeway/janeway-affiliation-details.png" class="blog-figure" alt="Author affiliation details screen in Janeway." caption="You can change job title, department, whether the affiliation is primary, and the start and end dates. Journal editors can also choose to turn off some of these fields when ORCID profiles are linked that show more detailed information." >}}


## How Janeway integrated ROR

Our design process started as usual with user stories. Janeway editors talked to us about the features they wanted to see, and how they wanted them to work, as did librarians who manage Janeway installations at their institutions.

{{< figure src="/img/blog/janeway/janeway-wireframes.png" alt="Mockups of author affiliation user interfaces in Janeway." caption="We went through [several rounds of wireframes](https://github.com/openlibhums/janeway/issues/4519) to work out usability details of the interface the authors would see when submitting articles." >}}

In this case, once we had a sense of user requirements, developer Steph Driver and technology director Andy Byers mocked up a few new possibilities for the author submission page. These went through several design reviews: our technology team, which included our UX researcher Katherine Parker-Hay and our publishing technologies librarian Siobhan Haime, thought through the implications for usability, accessibility, systems design, security, and maintainability.

I then got stuck in on actual [implementation](https://github.com/openlibhums/janeway/pull/4483), beginning with porting our old data to the new data model, writing an interface for backwards compatibility, and creating a command-line interface for server administrators to load the ROR data dump into their Janeway installation and set it up to automatically update every month, with several engineering reviews by Andy and senior developer Mauro Sanchez. I then wrote the [new user interface](https://github.com/openlibhums/janeway/pull/4697), incorporating a feature to implement the Contributor Roles Taxonomy (CRediT) started by Martin Paul Eve at the same time. I also wrote tools for [auto-matching existing affiliations](https://github.com/openlibhums/janeway/pull/4651) with ROR records. Finally, we made sure ROR data in Janeway sees the light of day, by updating our DOI deposits, [metadata streams](https://github.com/openlibhums/janeway/pull/4726), reader interface, and plugins.


{{< figure src="/img/blog/janeway/olh-institutions-chart.png" class="blog-figure" alt="Chart of institutions represented in OLH journals." caption="We were only able to auto-match part of our dataset, but we can already see the spread of institutions represented in OLH journals. Universities in the middle of the list, with 25-30 affiliations, include the University of Antwerp, the National University of Singapore, and the University of Leicester." >}}

In the end, implementing ROR was absolutely worthwhile, and also a lot of work. This was not because of ROR -- the ROR data and documentation are exemplary -- but rather because of the need to balance an expanded Janeway data model with backwards compatibility for existing bulk import tools. We also needed to let any user enter and edit custom institution names as before, in case they do not yet exist in ROR, but keep them from changing the ROR-linked records in Janeway, since those names are provided by the ROR authority records automatically loaded in.

The rollout of the integration has gone well, beginning with OLH journals in mid-2025, and then going to our installations at universities in Darmstadt, Ghent, Huddersfield, London, Wales, Dublin, Massachusetts, and Virginia. Our development partner California Digital Library (CDL) also began their rollout by testing and contributing bug reports. The new user interface has been well received, with editors at *Glossa* and other journals chiming in with suggestions that we were able to implement quickly.

Since October 2025, 74% of articles published have ROR-linked affiliations. For records that we could auto-match in the OLH backlist, the number is 43%. Future plans include improving the auto-matching capabilities using ROR’s latest tools, adding support for translation of organization names in the user interface, and adding features for coauthors.

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 




