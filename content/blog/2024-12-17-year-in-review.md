+++ 
title = "ROR in 2024: Year in Review" 
date = "2024-12-17T14:44:18-05:00"
draft = false 
tags = ["", ""] 
categories = ["Year in Review"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/review2024/Camouflage_Unsplash.jpg" 
images = ['/img/blog/review2024/Camouflage_Unsplash.jpg']
author = "ROR team" 
description = "In 2024, ROR processed over 8000 curation requests, handled 14 million monthly requests to the ROR API, saw the number of downloads of the ROR dataset triple, and was a finalist for the ALPSP Innovation in Publishing Award: read on for more highlights from a banner year."
slug = ""
aliases = [""]
+++ 

{{< figure src="/img/blog/review2024/Camouflage_Unsplash.jpg" class="featured-figure" alt="Lisa H lh_photography, CC0, via Wikimedia Commons and Unsplash" >}}

As 2024 comes to a close, we're reflecting on where ROR is now, and the answer is unmistakable: ROR is just about everywhere. We continue to be thrilled by the extent to which ROR is recognized as the obvious choice for identifying research and funding organizations, as evidenced by a wide range of new ROR integrations, by our extremely busy curation queue with over 8,000 requests this year to add new organizations and update existing ROR records, by the bustling traffic of 14 million monthly requests to the ROR API, by the fact that the number of downloads of [our open dataset](https://doi.org/10.5281/zenodo.6347574) has nearly tripled in the past year, by the honor of being named a finalist for the [2024 ALPSP Innovation in Publishing Award](https://blog.alpsp.org/2024/08/spotlight-on-research-organization.html), and by continual additions of enthusiastic ROR supporters to our very active and engaged community.

Here are some highlights from ROR's banner year in 2024. 

## ROR's schema and API evolve with the release of v2

April of 2024 marked a major milestone with the [release of ROR API and Schema 2.0](/blog/2024-04-15-announcing-ror-v2/) -- an official departure from the schema ROR initially inherited from GRID. Version 2 added features such as created and last-modified dates on all records, a place to store language codes for all names, and the addition of a `domains` field. All of these changes were shaped by extensive community feedback, and we’re pleased that more than 40% of ROR API users have already switched to version 2. 

{{< figure src="/img/blog/review2024/ror-api-stats-by-version.png" alt="ROR v2 now accounts for nearly 6 million requests to the ROR API in the course of a month."  caption="ROR v2 now accounts for nearly 6 million requests to the ROR API in the course of a month." >}}

After community feedback indicated the need for additional location information, the ROR team implemented a minor, non-breaking release of the ROR schema in December of 2024. [Schema 2.1](https://ror.readme.io/changelog/2024-12-12-schema-v2-1) makes location information in ROR more granular and adds continent names and codes to the location information available. 

## Publishers, repositories, and knowledge graphs adopt ROR

ROR adoption continues to increase among [many systems – and many *kinds* of systems](https://bit.ly/ror-integrations). We began the year with [Springer Nature's January account of their internal use of ROR](/blog/2024-02-20-ror-fifth-anniversary/) at the ROR Annual Community Meeting, and then at mid-year came the announcement of the [American Physical Society's adoption of ROR](/blog/2024-07-23-aps-adopts-ror/) both internally and as an affiliation identifier in Crossref DOI metadata. Drawing publishers' attention to the strategic importance of ROR in open scholarly metadata, [Crossref and CWTS Leiden worked together to add metrics for ROR IDs and author affiliations to Crossref's Participation Reports](/blog/2024-07-25-re-introducing-participation-reports/). 

{{< figure src="/img/blog/review2024/crossref-prep-elife.png" alt="Crossref's Participation Reports allow anyone to track the completeness of a Crossref member's metadata, now including what percentage of that member's items have ROR IDs."  caption="Crossref's Participation Reports allow anyone to track the completeness of a Crossref member's metadata, now including what percentage of that member's items have ROR IDs." >}}

ROR has already seen tremendous uptake among repository systems, and this year thanks to [4Science](https://4science.com), both DSpace 8.0 and DSpace-CRIS now support ROR IDs for both author affiliations and funders.

Scholarly Knowledge Graphs (SKGs), too, showed their awareness of ROR's strategic value in 2024. [OpenAlex](https://openalex.org) continues to be a key ROR adopter, and 2024 saw the launch of a new tool for community-based correction of OpenAlex's automatic matches of text affiliation strings to ROR IDs: the [Works Magnet](https://works-magnet.esr.gouv.fr/), developed in conjunction with France’s Ministère de l’Enseignement Supérieur et de la Recherche (MESR). Finally, [Clarivate™](https://clarivate.com) gave the ROR Community a special preview of their planned integration of ROR into the Web of Science at the [ROR Community Call in September](/events/2024-09-26-ror-community-call/) and [launched the integration](https://clarivate.com/academia-government/release-notes/web-of-science/web-of-science-november-7-2024-release-notes/) only a few weeks later. 

Too many other systems incorporated ROR this year to list here, but we want to emphasize our appreciation for every new ROR integration as well as the improvements to existing ROR integrations that we're beginning to see from many early adopters of ROR, [including ORCID](https://info.orcid.org/orcid-renews-support-of-ror-to-maximize-the-quality-of-organization-information-for-researchers/). We're always happy to feature ROR users [on our integrations list](https://bit.ly/ror-integrations), in [case studies on our blog](/categories/case-studies), and as presenters at our bi-monthly [community calls](/events). 

## Use of ROR as a funder identifier continues to grow

ROR has been increasing its coverage of funders by reconciling ROR with the Open Funder Registry since well before the announcement in late 2023 that [the Crossref Open Funder Registry will eventually be deprecated](/blog/2023-09-07-open-funder-registry-transition-ror-cross-post/) in favor of ROR. With the release of v2.0 in April, ROR added a "funder" item type to indicate which ROR records are mapped to the Open Funder Registry to assist with this use case. We've also published a [guide to help users transition from Open Funder Registry to ROR](https://ror.readme.io/v2/docs/funder-registry). 

Beginning in late 2023 and throughout 2024, we've seen many widely used scholarly systems begin to use ROR IDs to identify and disambiguate funders. [CHORUS Dashboard & Reporting Services](https://chorusaccess.org), [OA.Report](https://oa.report), [ChronosHub](https://chronoshub.io), and [OpenAlex](https://openalex.org) are all among the systems that either use ROR exclusively for this purpose or else map other funder identifiers to ROR IDs.

Repository systems have been particularly quick to adopt ROR for funder identification, and [nearly 450,000 DataCite DOI records](https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:ROR&page[size]=0) registered by these systems currently include ROR IDs for funders. See our blog post [Using ROR for Funder Identification](/blog/2024-08-06-using-ror-for-funder-identification/) for more details about how repository systems such as Dryad, Zenodo, and Figshare use ROR for the funder identification use case.

{{< figure src="/img/blog/use-case-funders/ror-inveniordm.png" alt="Documentation of the ROR-based funder model and award lookup in InvenioRDM, the open source system that runs Zenodo" caption="Documentation of the ROR-based funder model and award lookup in InvenioRDM, the open source system that runs Zenodo." >}}


## ROR maintains global coverage of research organizations and scales curation capacity

We pride ourselves at ROR on providing a registry with truly global coverage that takes an international perspective on research organizations and information systems. In 2024, we undertook several initiatives aimed at improving regional coverage of organizations, while at the same time experiencing organic growth from Mexico, France, and Indonesia. We also called for community feedback on [a proposal to add additional external identifier mappings](https://bit.ly/ror-proposal-external-ids-draft) to ROR records, including regional identifiers such as the European PIC code, which many ROR users have said they would find useful. In 2025, we plan to complete our evaluation of potential new external identifiers and then add them to ROR records.

More generally, we have processed over 8,000 curation requests in 2024, a 44% increase over 2023, adding a total of 4,098 new records to the registry this year and updating 106,944 records. Recognizing the importance of scaling our capacity to respond to curation requests quickly while continuing to produce accurate and complete metadata, this year we not only revamped and improved our curation tools and codebase but have also added a new team member: [Riley Marsh, Metadata Manager](/blog/2024-09-03-welcome-riley-marsh/). 

{{< figure src="/img/blog/review2024/ror-curation-tracker.png" alt="The very busy ROR Curation Tracker shows just a few of the requests we receive and process every day."  caption="The very busy ROR Curation Tracker at [https://github.com/ror-community/ror-updates/issues](https://github.com/ror-community/ror-updates/issues) shows just a few of the requests we receive and process every day." >}}

With the release of v2, ROR records now also include a place to store a language code in all name fields and a new field for an organization's top-level domains (e.g., `madeira.gov.pt` instead of `https://www.madeira.gov.pt`), and in 2024 we carefully populated these new, empty elements with accurate values for thousands of records, further enriching ROR's metadata and making it of even greater value to the global research information community. 

## ROR's community activities

ROR's community activities in 2024 included publishing pieces on various topics of interest. For instance, ROR and Crossref collaborated on a [blog post series explaining various aspects of automatic metadata matching](/tags/matching/) that proved very popular and has even been [adapted into French](https://punktokomo.abes.fr/2024/12/04/anatomie-des-alignements-a-labes-ou-metaphore-des-chaussettes-episode-3-3/) by Carole Melzac of ABES. Merci, Carole! We also published additional [case studies](/categories/case-studies) with ROR users and a [guide to RRID and ROR for facilities](/blog/2024-11-26-rrid-ror-facilities/).

ROR also participated in and co-organized several global [events](https://ror.org/events) both in person and online, notably a webinar co-organized with 4Science on [New Features for Organization Information in DSpace with ROR](/events/2024-10-03-ror-in-dspace/), a session at PIDFest on [Curation and Community: Setting Metadata Policies at ROR](https://repozitar.techlib.cz/entities/publication/5c93a23a-61c9-403a-9635-cf9a442747fd), and an ACRL Choice / LibTech Insights webinar in collaboration with OpenAlex on [Open Affiliation Metadata: How Recent Innovations Help Libraries and Librarians](/events/2024-11-07-open-affiliation-metadata/). 

And, of course, as always, we held our regular bi-monthly online [Community Calls](https://www.youtube.com/watch?v=z9Onl3dcoxs&list=PL4n_Cvd0PpoEBWyZMiwb2ImVQCy4Zpchk) featuring demos and presentations by adopters as well as engaging discussion about future directions. If you're making a New Year's resolution to get more involved with ROR in 2025, we encourage you to [join the ROR Community Forum](https://groups.google.com/a/ror.org/g/ror-community) (now 376 members strong!) to receive notifications of upcoming Community Calls as well as other news and event announcements. 

We give our heartfelt thanks to all of you who have supported ROR this year by sharing your thoughts, asking us questions, doing the work at your own organizations, making financial contributions, and in a hundred other ways demonstrating that you understand the value of ROR not just for your own benefit, but for the benefit of the entire research information ecosystem. We look forward to collaborating with you in 2025. 

{{% callout icon="fa-envelope" %}} 
Write us at info@ror.org with any comments or questions.
{{% /callout %}}

<!-- Commonly used content 

{{< figure src="/img/blog/" class="featured-figure" alt="" >}}


{{% callout color="green" icon="fa-info" %}} 

{{% /callout %}}


{{< figure src="/img/blog/" class="blog-figure" alt="" >}}


{{< youtube id="" title="" >}}


{{% callout icon="fa-envelope" %}} 
Write us at info@ror.org with any comments or questions.
{{% /callout %}} 

-->
