+++ 
title = "ROR in 2025: Year in Review" 
date = "2025-12-16T18:12:19-05:00"
draft = false 
tags = ["", ""] 
categories = ["Year in Review"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.jpg" 
thumb = "/img/lion-notched-ear.jpg" 
images = ['/img/lion-notched-ear.jpg']
authors = ["ROR Core Team"] 
description = "In 2025, ROR deprecated a schema version, launched a new affiliation matching strategy, worked with national and international groups on community metadata curation, supported new users of and use cases for ROR, devoted our time to key research information initiatives, and did much, much more."
doi = "https://doi.org/10.71938/xwf9-xd80"
crosspost = ""
+++ 

{{< figure src="/img/lion-notched-ear.jpg" class="featured-figure" alt="Lion, savannah, wildlife. Image by u_y49ekyffz5 from Pixabay" >}}

This time last year, when we [reflected on ROR's milestones in 2024](https://doi.org/10.71938/h7r4-fd19), one of the major highlights was the [launch of version 2 of the ROR schema and API](https://doi.org/10.71938/v406-1m30). Now, as we think back on 2025, where we were a year ago makes a nice bookend to one of the major highlights of the current year: last week's [sunset of version 1 of the ROR schema and API](https://doi.org/10.71938/y9pa-8m20). Developing and launching new products and services is both strategically important and satisfying, and we've certainly done that in 2025, but as any initiative matures, it also becomes essential to put away certain things, clearing the path to sustainable maintenance and renewed innovation. 

ROR, in short, is fully grown now: we're well-established as the obvious and trustworthy choice for research organization identification, we're processing more and more (and more and more) requests for changes and additions to the registry, and we've established systems and processes that let us run like a well-oiled engine. 

Fulfilling its [original purpose](https://doi.org/10.71938/sna1-zc49), ROR plays a key part in providing open affiliation metadata for numerous workflows and use cases: to ensure research integrity, manage transformative agreements, track research output, and analyze institutional collaborations. ROR IDs have also proven to be valuable for many more use cases and types of users than anyone originally envisioned. Notably, both publishers and funders have begun using ROR IDs to identify funders, and we expect this use of ROR to increase dramatically in the future, especially as more and more funders register DOIs for awards. 

Here's a summary of what ROR did in 2025. 


## Refashioning ROR's schema and API

Much of the technical work we've done this year was dedicated to infrastructure and service-level improvements intended to keep our API fast and reliable and our metadata schema comprehensive and flexible in the future. 

At the end of July, we [changed the default response to ROR API queries to return results in version 2](https://ror.readme.io/changelog/2025-07-30-default-response-to-api-requests-is-now-version-2) of the ROR schema. This significant change went very smoothly, with the vast majority of ROR API users having prepared their ROR integrations for the switch before this date. With this first phase of version 1 deprecation in place, we continued to remind ROR users that version 1 would be sunset in December. By the time the [sunset date of December 9th](https://ror.readme.io/changelog/2025-12-04-version-1-of-the-ror-api-and-schema-is-sunsetting) rolled around, fewer than 8% of ROR API users were using version 1. As of this writing we still haven't received any reports of [broken userspaces](https://www.seangoedecke.com/good-api-design/), which makes us very happy! The [current version of the ROR API and schema](https://ror.readme.io/docs/ror-data-structure) was designed in collaboration with our community for long-term support. We are glad that its more descriptive and useful form will be the default experience for all users. 

Another major technical initiative this year has been the implementation of a new strategy for affiliation string matching, which [we announced in early December](https://doi.org/10.71938/zz90-g810). This new strategy, developed in collaboration with Crossref's Director of Technology, [Dominika Tkaczyk](https://www.crossref.org/people/dominika-tkaczyk), is both faster and more efficient than our existing matching, while also achieving better performance for this task. As such, it is particularly well-suited for large-scale affiliation string matching and was adopted[ by OpenAlex](https://doi.org/10.71938/mtx2-vb16) at the start of the year to significantly improve their ROR ID coverage. We look forward to hearing more from ROR API users about this new matching strategy in 2026, which we plan to make the default next year. 


## Ensuring high-quality open metadata through community curation

We continue to see logarithmic growth in [requests](https://github.com/ror-community/ror-updates/issues) to create new ROR records and modify existing ROR records, and while we still process many requests from individuals and individual research organizations, we are working more and more with national and international research information initiatives on large-scale curation projects. This year, for instance, we collaborated closely with the Korea Institute of Science & Technology Information (KISTI) on a [project to add and modify approximately 450 Korean research organizations](https://github.com/ror-community/ror-updates/issues/19804), continued our [work with the Fundação para a Ciência e Tecnologia](https://github.com/ror-community/ror-updates/issues/12742) to add and modify hundreds of records for research organizations in Portugal, and [added and modified many ROR records for African research organizations](https://github.com/ror-community/ror-updates/issues/23636) in collaboration with the Africa PID Alliance.

Just a few of ROR's other collaborative curation projects in 2025 include the following: 

* Adding [new Category 2 Centres for UNESCO](https://github.com/ror-community/ror-updates/issues/20835)
* Working with Japan's National Institute of Science and Technology Policy (NISTEP) to [reconcile ROR records with the NISTEP Dictionary of Names of Universities and Public Organizations](https://github.com/ror-community/ror-updates/issues/16741)
* Adding and updating [research infrastructure facilities for Australia's National Collaborative Research Infrastructure Strategy (NCRIS)](https://github.com/ror-community/ror-updates/issues/24294)
* Working with The National Library of Luxembourg to [add and update Luxembourgian organizations](https://github.com/ror-community/ror-updates/issues/26521)
* Adding [Czech Large Research Infrastructures](https://github.com/ror-community/ror-updates/issues/18629) listed in Czechia's national "Road Map of Infrastructures" 

If your organization would like to work with ROR on a national-level project, you're always welcome to use our [bulk processing spreadsheets](https://ror.org/registry/#bulk-requests) to send us a large number of requests for additions or updates. 


## Supporting new users and uses of ROR

In 2025, we saw a marked increase in the use of ROR to address key use cases for funding organizations and for funding metadata. Open Funder Registry records have been incorporated into ROR, and ROR is recommended in both the [Crossref metadata schema](https://www.crossref.org/documentation/funder-registry/funding-data-overview/) and the [DataCite metadata schema](https://support.datacite.org/docs/connecting-to-organizations) as the preferred identifier for funding organizations. Community initiatives such as the [Barcelona Declaration on Open Research Information](https://barcelona-declaration.org) are also emphasizing the importance of ROR in bringing broader visibility to open funding metadata to enable downstream reporting and tracking of research. 

Soon after Crossref [announced that its members could now use ROR IDs to identify funders](https://doi.org/10.13003/156081) in any type of content, for instance, Québec's premier funder Fonds de Recherche du Québec (FRQ) became an enthusiastic adopter of ROR. We [worked with FRQ](https://github.com/ror-community/ror-updates/issues/20812) to add and modify ROR records representing the affiliated institutions of the principal investigators on FRQ grants so that FRQ could [register more than 20,000 grants with Crossref](https://frq.gouv.qc.ca/en/persistent-unique-identifiers-doi/), using [its own ROR ID](https://ror.org/00w3qhf76) to identify itself.

Throughout 2025, we've also continued to improve the quality of metadata in [Chinese-language records identifying funders](https://github.com/ror-community/ror-updates/issues/20496). Recently, in advance of the [Open Science Framework](https://osf.io)'s transition to using ROR IDs for funders, we've also been working with OSF [to review nearly 150 funders](https://github.com/ror-community/ror-updates/issues/27414) and match them to ROR IDs or add them to ROR. We anticipate even more of this work next year as more systems continue to [use ROR IDs to identify funders](https://ror.readme.io/docs/funder-registry) for all kinds of DOI content types, including grants.

As for publishing systems, we were thrilled to see the release of PKP's Open Journal Systems (OJS) 3.5 in which [ROR IDs for author affiliations are now part of the core codebase](https://docs.pkp.sfu.ca/learning-ojs/about-ojs/en/#other-changes) instead of being managed by a plugin. OJS is used by thousands of small publishers all across the globe, and this update means that these small publishers can more easily identify author affiliations in DOI metadata. Another notable publishing integration is in the [Janeway](https://www.openlibhums.org/site/janeway/) system created by the Open Library for the Humanities, where authors who use an ORCID ID to log in during the manuscript submission workflow will see their institutional affiliation automatically added thanks to Janeway's ability to pull that information from the ORCID API using the ROR ID. Both the ORCID ID and the ROR ID are then included in DOI metadata. 

Publishing systems certainly aren't the only ones to use ROR. CRIS systems are increasingly standardizing on ROR, including Symplectic Elements, which [began to enrich and normalize organization data with ROR](https://doi.org/10.71938/1fch-hb40) this year. We've also seen the [Research Activity Identifier (RAID)](https://www.raid.org/) initiative to identify and register research projects using ROR for [organization identifiers in its schema](https://metadata.raid.org/en/v1.6/core/organisations.html) and [the Research Data Alliance incorporating ROR into its member registration form](https://www.youtube.com/watch?v=3aBjcM3ou1M&list=PL4n_Cvd0PpoHfsM3_6VfhAovGIfL3Z79x) in a thoughtfully-designed user interface. 

## Contributing to key conversations and initiatives

As a community-driven initiative ourselves, we recognize how important it is to do professional service for others and participate in collaborative activities and discussions. In 2025, ROR's participation in such work extended well beyond our own [Community Calls and events](https://ror.org/events/). ROR team members serve on working groups and advisory bodies for the [Barcelona Declaration](https://barcelona-declaration.org/), the [National Information Standards Organization (NISO)](https://niso.org), [OpenAlex](https://openalex.org), the [Public Knowledge Project (PKP)](https://pkp.sfu.ca), and [Collaborative Metadata (COMET)](https://www.cometadata.org/), just to name a few. As a selected infrastructure in the [Global Sustainability Coalition for Open Science Services (SCOSS)](https://scoss.org/), we are also involved with SCOSS events and activities, helping to support the global open infrastructure that makes so many research information services possible.

We also participated this year in the final NSF-funded workshop on [FAIR Facilities and Instruments](https://ncar.github.io/FAIR-Facilities-Instruments/), offering our perspective in particular on [how research facilities can use persistent identifiers](https://doi.org/10.71938/r7ar-eq11) to help their important work gain better recognition. Finally, we presented at global conferences such as [euroCRIS](https://ror.org/events/2025-05-15-ror-eurocris/), [Open Repositories](https://ror.org/events/2025-06-16-open-repositories), the [Society of Scholarly Publishers (SSP)](https://ror.org/events/2025-05-28-ssp), and the [Japan Open Science Summit](https://ror.org/events/2025-06-24-joss), reaching a range of communities through these events. 

As 2025 comes to a close, we'd like to thank all those who have helped bring ROR to this point. We remain grateful for your questions, your requests, your comments, and your contributions, and we remain committed to learning from and supporting the ROR community in 2026, starting with the [ROR Annual Community Meeting sessions](https://ror.org/events) on February 3rd and 4th, 2026. See you next year!

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 