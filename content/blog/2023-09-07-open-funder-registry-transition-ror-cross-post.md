+++
title = "Open Funder Registry to Transition to ROR (cross-post)"
date = "2023-09-07"
draft = false
tags = ["funders", "news", "metadata", "persistent-identifiers", "pids", "registry" ]
categories = ["updates"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "https://assets.crossref.org/logo/crossref-logo-200.svg"
images = ['/img/crossref-social.png']
author = "Amanda French, Ginny Hendricks, Rachael Lammey, Fabienne Michaud, Maria Gould"
description = "Crossref has announced a long-term plan to deprecate the Open Funder Registry and merge it with ROR in order to make workflows more efficient for all concerned. ROR and Crossref are working closely together on this important initiative."
+++

Crossref has announced a long-term plan to deprecate the Open Funder Registry and merge it with ROR in order to make workflows more efficient for all concerned. ROR and Crossref are working closely together on this important initiative, and we're happy to answer any questions that users of the Funder Registry may have. Feel free to write info@ror.org, [book a meeting with Amanda French](https://calendly.com/ror-chat), or attend a [ROR event](/events) if you'd like to learn more.

{{% callout color="green" icon="no-icon" %}}

**The below is cross-posted from the Crossref blog. [Read the original post.](https://crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror)**  

{{% /callout %}}

---

# Open Funder Registry to transition to the Research Organization Registry (ROR)

Today, we are announcing a long-term plan to deprecate the [Open Funder Registry](/services/funder-registry/). For some time, we have understood that there is significant overlap between the Funder Registry and the [Research Organization Registry (ROR)](https://ror.org), and funders and publishers have been asking us whether they should use Funder IDs or ROR IDs to identify funders. It has therefore become clear that **merging the two registries will make workflows more efficient and less confusing for all concerned.** Crossref and ROR are therefore working together to ensure that Crossref members and funders can use ROR to simplify persistent identifier integrations, to register better metadata, and to help connect research outputs to research funders.

Just yesterday, we published [a summary of a recent workshop between funders and publishers on funding metadata workflows](/blog/open-funding-metadata-community-workshop-report/) that we convened with the Dutch Research Council (NWO) and Sesame Open Science. As the report notes, "open funding metadata is arguably the next big thing" [in Open Science]. That being the case, we think this is the ideal time to strengthen our support of open funding metadata by beginning this transition to ROR. 

### Comparing the features of ROR and the Funder Registry 

Let's look at some of the major similarities and differences between the two registries, including their history, features, scope, and usage, since there are important nuances and distinctions that are helpful to understand.

##### Overview

|  ROR  | Funder Registry |
|---|---|
| Launched in 2019  |  Launched in 2013 |
| Primary use case is contributor affiliation | Primary use case is funding acknowledgement |
| 105k+ records | 35k+ records |
| CC0 data | CC0 data |
| REST API | REST API |
| Free to use | Free to use |
| Entire registry downloadable as JSON and CSV | Entire registry downloadable as RDF; funder names and IDs downloadable as CSV |
| Records contain mappings to other IDs | Records do not contain mappings to other IDs |
| Organization relationships and hierarchy | Organization relationships and hierarchy |
| 8 organization types | 2 funder types, 8 funder subtypes |
| Open source code and multiple open-source tools available | Open source code |
| Web-based registry search | Web-based search for works in Crossref associated with each Funder ID |
| Web-based landing pages for each ROR record | JSON landing pages for each Funder Registry record |
| Updated monthly | Updated monthly |
| Public curation process | Private curation process |
| Anyone can request changes and additions | Anyone can request changes and additions |
| Stable financial support | Stable financial support |
| Beginning to be supported in funding and publishing workflows | Somewhat well supported in most funding and publishing workflows |
| Currently used by 260+ Crossref members [^1] | Currently used by 2100+ Crossref members [^2] |

##### History 

The [Open Funder Registry](/services/funder-registry/) was [launched as FundRef over a decade ago](/news/2013-05-28-crossrefs-fundref-launches-publishers-and-funders-track-scholarly-output/) to enable the community to **cite research financing** and assert it within the scholarly record, acknowledging the organizations granting their support. Elsevier generously donated the seed data for the Funder Registry and has managed its curation for the last ten years, while we have maintained the technical operations and promoted community adoption of the Funder Registry. 

The [Research Organization Registry (ROR)](https://ror.org/) was [introduced in 2019](https://ror.org/blog/2019-02-10-announcing-first-ror-prototype/) by the California Digital Library, DataCite, and Crossref to enable the community to **cite contributor affiliations** and assert them within the scholarly record, acknowledging the organizations that housed or performed the research. Digital Science generously donated the seed data for the Research Organization Registry from its Global Research Identifier Database (GRID) initiative, and Crossref, DataCite, and the California Digital Library have contributed labor and resources to turn ROR into a mature, independent, freely available offering. 


##### Scope

One key difference between the registries is that **ROR has always included funding organizations, and ROR records have always included mappings to Funder IDs where available,** while the reverse is not true: the Funder Registry includes only funding organizations, not other kinds of organizations, and Funder Registry records do not currently include mappings to ROR IDs or other identifiers. It therefore makes sense to expand ROR's initial contributor affiliation use case to include the function of identifying research financing.


##### Usage

More Crossref members use Funder IDs than use ROR IDs, to be sure. You can see from the table above that the number of Crossref members using Funder IDs in Crossref records is higher by almost a factor of 10 than the number of Crossref members using ROR IDs in Crossref records. But note too that **the current _rate_ of adoption is far higher for ROR than it is for the Funder Registry.** Since [January of 2022](/blog/a-ror-some-update-to-our-api/), we've seen a gratifying number of publishers and service providers beginning to use ROR identifiers for contributor affiliations in Crossref. In the last year, the number of Crossref members depositing ROR IDs has increased by 356%, while the number depositing Funder IDs has increased only by 12%. As evidenced by its ballooning API traffic, too, with more than 20 million requests last month,[^3] ROR is clearly being used by many scholarly research systems for many purposes. **The more systems that use an identifier, the more valuable that identifier becomes as a vehicle for exchanging information.**

Even though ROR's primary use case has been to identify contributor affiliations, ROR is in fact already being used by funders. Nineteen funding organizations are depositing ROR IDs in their grant records with Crossref to denote principal investigator affiliations,[^4] and, following a meeting of the [Crossref Funder Advisory Group](/working-groups/funders/) last month, all eighty funder members are primed to start using ROR IDs to identify themselves in grant records. DataCite has allowed ROR IDs as a funding identifier since 2019[^5], and while there are currently over 877,000 DataCite records that use Funder IDs to identify funders,[^6] there are also over 161,000 DataCite records that use ROR IDs to identify funders.[^7]

##### Tools and services

Both the Funder Registry and ROR offer open data and open source code, but we think that ROR's suite of free and open source utilities (some of which were developed by Crossref staff) gives it a competitive advantage. We know that publishers and their service providers have ongoing challenges in collecting and matching funding information from authors and in validating Funder IDs. With ROR’s extensive toolkit, **publishers and their technology providers who adopt ROR will be in a much better position to improve the accuracy of funding acknowledgements in metadata, which can in turn enable the development of reliable analytics, tools, and services for funders, regulators, research facilities, and the public**. 

Crossref has built tools based on OpenRefine for both the Funder Registry and ROR: the [Open Funder Registry Reconciliation Service](/labs/fundref-reconciliation-service/) and the [ROR Reconciler](https://ror.readme.io/docs/openrefine-reconciler) are both useful ways to clean messy data. ROR, however, also offers a much-used [API endpoint that helps match organization names to ROR IDs](https://ror.readme.io/docs/affiliation-parameter), and several third parties have also developed and shared [open source matching tools and services for ROR](https://ror.readme.io/docs/match-organization-names-to-ror-ids#match-organization-names-to-ror-ids-using-third-party-tools). Crossref and ROR are also collaborating on new strategies for affiliation matching that will be able to match funding references.

##### Community engagement models 

The Funder Registry has been curated for over a decade through time and expertise generously donated by Elsevier. ROR offers more transparency and community involvement; it is [openly governed](https://ror.org/about/#governance-model) by Crossref, DataCite, and the California Digital Library and is advised by a global network of community stakeholders through its [Steering Group and](https://ror.org/community/#steering-group) Community Advisory Group. ROR is [openly curated](https://github.com/ror-community/ror-updates/issues) and is aided by a global [Curation Advisory Board](https://ror.org/registry/#curation-advisory-board) of volunteers. 

##### Summary

For all of the above reasons, then, we believe that in the long term ROR will serve the community better as an identifier for funders. In a future post, we'll do an even deeper dive into comparing the Funder Registry and ROR, comparing the metadata and data in each registry and giving statistics on funder assertions in our metadata.

### What will this mean for you? 

The many organizations whose tools, services, and workflows have been architected to use Funder Registry IDs will find this transition a challenge, and we don't want to make light of that issue. Over the last ten years, we have encouraged the community to adopt Funder IDs, and the community has demonstrably recognized the benefits of doing so. Publishers have put a great deal of time, thought, and effort into collecting funder data and including it in Crossref metadata, and they have built internal reports and workflows around the Funder Registry. **Both Crossref and ROR are committed to making the transition from the Funder Registry to the Research Organization Registry as simple as possible for those who have adopted the Funder Registry.** 

If you are not already using the Funder Registry and are planning to begin standardizing funding data, we recommend that you use ROR to identify funders. If you are currently using the Funder Registry in your systems and workflows, don't worry! **In the short term, and even in the medium term, Funder IDs aren't going away.** Eventually, however, the Funder Registry will cease to be updated, so any new funders will only be registrable in Crossref metadata with ROR IDs. Legacy Funder IDs and their mapping to ROR IDs will be maintained, so if Crossref members submit a legacy Funder ID, it will get mapped to a ROR ID automatically. Note, too, that Crossref is committed to maintaining the current funder API endpoints until ROR IDs become the predominant identifier for newly registered content.

In short, if you are already using Funder IDs, you can and should continue to do so. However, we do recommend that you begin looking at what it will take to integrate ROR into your systems and workflows for identifying funders. Think of it as warming up before a workout: it's time to start swinging your arms and stretching your hamstrings. 

We face challenges in this transition, too. Of these, we think the largest will be (1) completing the reconciliation work involved in mapping Funder IDs to ROR IDs, and (2) overhauling Crossref's schemas, APIs, and deposit tools to support ROR IDs in all the ways we currently support Funder IDs. We'll discuss both of these challenges in future blog posts, but it's worth saying that **any challenges pale in comparison to the benefit of enabling the whole community to use a single open identifier in multiple places in the scholarly record.**

### Tell us what you need!

We want to hear from you. You can use our [Community Forum](https://community.crossref.org/) talk to us about the Crossref Funder Registry, and you can [join the ROR Slack](https://tinyurl.com/ror-slack) to talk to the ROR team and community. You can also contact Crossref via our [request form](https://support.crossref.org/hc/en-us/requests/new?ticket_form_id=360001642691) or email ROR at [info@ror.org](mailto:info@ror.org), and you can attend online [Crossref events](/events/) and [ROR events](https://ror.org/events) to get updates from us and ask us your questions. 

One of the major messages we're already hearing from funders and publishers is expressed in [yesterday's post on open funding metadata](/blog/open-funding-metadata-community-workshop-report/): "While many concluded that there was still a long way to go to solve the many technical challenges related to funding metadata, attendees were unanimous on its importance." We look forward to beginning this important work together.


[^1]: [Crossref API works with ROR IDs faceted by publisher name](https://api.crossref.org/works?filter=has-ror-id:t&facet=publisher-name:*)
[^2]: [Crossref API works with Funder IDs faceted by publisher name](https://api.crossref.org/works?filter=has-funder-doi:t&facet=publisher-name:*)
[^3]: [ROR API Public API Usage Insights](https://p.datadoghq.eu/sb/db1aec04-0c1a-11ec-860a-da7ad0900005-7d7c572812608235cca3359ee5ec591a?from_ts=1690924139911&to_ts=1693516139911&live=true)
[^4]: [Crossref API works of type "Grant" with ROR IDs faceted by publisher name](http://api.crossref.org/works?filter=has-ror-id:t,type-name:Grant&facet=publisher-name:*)
[^5]: [DataCite Metadata Schema 4.3 release notes, August 2019](https://schema.datacite.org/meta/kernel-4.3/) 
[^6]: [DataCite API Funder ID in funding reference](https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:%22Crossref%20Funder%20ID%22&page[size]=0)
[^7]: [DataCite API ROR ID in funding reference](https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:ROR&page[size]=0)

{{% callout color="grey" icon="fa-envelope" %}}

Contact info@ror.org with any and all questions.  

{{% /callout %}}



