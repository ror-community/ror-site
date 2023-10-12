+++
title = "How ROR and the Open Funder Registry Overlap: A Closer Look at the Data"
date = "2023-10-12"
draft = false
tags = ["funders", "news", "metadata", "persistent-identifiers", "pids", "registry" ]
categories = ["explainers"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/blog/funder-overlap/overlap-blank-charts.png"
images = ['/img/blog/funder-overlap/overlap-blank-charts.png']
author = "Amanda French, Adam Buttrick"
description = "ROR is ready to take on the important work that the Open Funder Registry has been doing: identifying research funders in a clean, consistent, comprehensive, and interoperable way. This post compares both registries and provides data showing that most of the Open Funder Registry records that see the most use already have equivalent records in ROR."
+++


Following on the [announcement that Crossref's Open Funder Registry will be merging with ROR after 2024](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/), we'd like to do a deep dive into the specifics of the evidence that ROR is ready to take on the important work that the Open Funder Registry has been doing: identifying research funders in a clean, consistent, comprehensive, and interoperable way. The main thing you need to know is that ROR's data is up to the challenge. As of today, **there is a corresponding ROR ID for over 94% of Funder ID assertions in both DataCite and Crossref DOI records**. 

Crossref and Elsevier have done the entire scholarly communication ecosystem a great service not just in creating and maintaining the Open Funder Registry (formerly FundRef), but also in promulgating its use by publishers and other systems. Thanks to the Open Funder Registry, it has never been easier to match funders to research outputs using open connection metadata, and the current moment is one in which linking funding to research outputs is of critical importance to ensure transparency and research integrity.  

As more and more systems have begun using ROR for contributor affiliations, however, it has become clear that also using ROR for the all-important task of identifying funders provides many benefits: 

* Streamlining processes by using one registry instead of two
* Reducing difficulty with ROR's easy-to-use REST API, clear documentation, and web-based landing pages
* Being able to see and participate in ROR's open, transparent metadata curation processes
* Supporting community-led and community-governed infrastructure

Current users of the Open Funder Registry can begin planning now to enjoy these benefits by switching to ROR for funder identification.

ROR has been working throughout 2022 and 2023 to ensure that ROR has excellent coverage of funders, and we intend to continue this work through 2024. Read on for a detailed account of the current overlap between the Open Funder Registry and ROR and to learn more about the **[ROR / Funder Registry Overlap tool](https://rorfunderoverlap.streamlit.app/)** we've built to help you conduct your own analyses.


## Comparing at the record level

**Much of the information included in ROR and Open Funder Registry records is similar.** Both ROR records and Open Funder Registry records include a globally unique identifier for the organization, a name for the organization, alternate names and acronyms for the organization, the location of the organization, the organization's type, and relationships to other organizations. If we examine the record for UK Research and Innovation (UKRI) in both the Open Funder Registry and ROR, for instance, we can see that the associated metadata is similar. 


{{< figure src="/img/blog/funder-overlap/funder-id-ukri-01.png" class="blog-figure" alt="JSON data from the Open Funder Registry for the funding organization UKRI" caption="The Open Funder Registry record for UKRI is available as JSON at [http://doi.org/10.13039/100014013](http://doi.org/10.13039/100014013).">}} 


{{< figure src="/img/blog/funder-overlap/ror-ukri.png" class="blog-figure" alt="The ROR record for the funding organization UKRI" caption="The ROR record for UKRI is available on the web at [https://ror.org/001aqnf71](https://ror.org/001aqnf71) and in the ROR API as JSON at [https://api.ror.org/organizations/001aqnf71](https://api.ror.org/organizations/001aqnf71).">}} 


Note that the ROR record includes a reference to the corresponding Funder ID, and note that both the ROR record and the Open Funder Registry record list the same nine "child" organizations for UKRI (e.g., Research England). Each of those subsidiary organizations has its own identifier in both registries. 

{{< figure src="/img/blog/funder-overlap/funder-id-ukri-02.png" class="blog-figure" alt="JSON record for the funding organization UKRI from the Crossref API funders endpoint" caption="The metadata from the Crossref API funders endpoint at [https://api.crossref.org/funders/100014013](https://api.crossref.org/funders/100014013) shows the names of UKRI's nine child organizations. The funders endpoint of the Crossref API uses the Open Funder Registry to connect funders with the works they have funded. The web-based Open Funder Registry Search at [https://search.crossref.org/funding](https://search.crossref.org/funding) uses the funders endpoint.">}} 

One difference between the metadata in the Open Funder Registry and the metadata in ROR concerns organization type. The Open Funder Registry [gives each funder a type](https://www.crossref.org/documentation/funder-registry/accessing-the-funder-registry/) of `government` or `private` with associated subtypes for each. Government funder subtypes include `federal` and `non-federal,` while private funder subtypes include `academic`, `corporate`, `foundation`, `international`, `professional associations and societies`, and `other non-profit.` ROR also [supports organization types](https://ror.readme.io/docs/ror-data-structure#types) and currently allows eight options: `Archive`, `Company`, `Education`, `Facility`, `Government`, `Healthcare`, `Nonprofit`, and `Other`. 

In [version 2.0 of the ROR metadata schema, dataset, and API](https://ror.readme.io/docs/schema-v20), which is due to be released early in 2024, ROR will [add support for a "funder" organization type](https://github.com/ror-community/ror-roadmap/issues/159) and will add this type to all ROR records that include a Funder ID as an addition to the existing organization type value. This means that early in 2024, the version 2.0 ROR record for UKRI will include organization types of both `government` and `funder`. In the meantime, as we explain in [our documentation of the ROR API advanced query parameter](https://ror.readme.io/docs/advanced-query-parameter), the list of all active ROR records that currently include a Funder ID can be retrieved using the following query: 

```
https://api.ror.org/organizations?query.advanced=_exists_:external_ids.FundRef.all
```
Version 2.0 of the ROR schema and API is [open for beta testing through October 16th, 2023](https://ror.readme.io/docs/ror-schema-api-v2-beta) – current users of the Open Funder Registry are more than welcome to participate and to give us their feedback. 

At the record level, then, ROR and the Open Funder Registry are far more similar than they are different. Let's look now at the general overlap between the two registries to learn how well-suited ROR data is for the purpose of identifying funders. 

## Comparing at the registry level

**Most of the Funder Registry records that see the most use already have equivalent records in ROR**, which is good news for users of the Funder Registry. Throughout 2022 and into 2023, the ROR team has been [working diligently to reconcile the Open Funder Registry with ROR](https://github.com/ror-community/ror-roadmap/issues/131), and this reconciliation work has resulted in the addition of 631 new ROR records identifying funders. Moreover, we have modified 6,080 ROR records to add Funder ID mappings and to ensure that these records include key metadata from the Open Funder Registry.  

The project to reconcile ROR with the Open Funder Registry has been focused on Funder IDs that have existing uses, or "assertions," in Crossref records, and the work has been prioritized on the basis of the total number of assertions. The Funder Registry includes identifiers for about 35,000 funding organizations, and of these, nearly 33,000 are used at least once in Crossref metadata. More than 8 million content items registered with Crossref include Funder IDs,[^1] and since many of those items cite more than one funder, there are over 13 million total funding assertions in Crossref metadata.[^2] 

To analyze the overlap between ROR and the Funder Registry, we have built and made publicly available the [ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app/). This tool shows that **after ROR's reconciliation efforts to date, 94.1% of the existing Funder ID assertions in Crossref metadata can be matched to ROR IDs.** We expect this percentage to increase as the reconciliation work continues.

{{< figure src="/img/blog/funder-overlap/crossref-funder-overlap.png" class="blog-figure" alt="Two pie charts, with the one on the left showing that 54.6% of organizations in the Open Funder Registry are available in ROR and the one on the right showing that 94.1% of Funder ID uses in Crossref records have a corresponding ROR ID" caption="Crossref - Aggregate ROR/Funder Registry OverlapTool view from the [ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app).">}} 

The pie chart on the left shows that of the 35,000+ funders in the Funder Registry, more than 19,000, or a small majority of 54.6%, are represented in ROR, usually on a one-to-one basis. However, about 2,000 Funder IDs in the Funder Registry are never used in Crossref metadata, and many of the remaining 33,000 are used only once. Individual funders who issue many awards can account for a high number of funding assertions, and ROR has therefore focused its Open Funder Registry reconciliation work on these large funders. For example, the United States National Science Foundation currently accounts for over 332,000 funding assertions by itself, and with its many associated laboratories and agencies, it accounts for over 412,000 funding assertions in works registered with Crossref.[^3] The pie chart on the right shows that **of the more than 13 million uses of Funder IDs in Crossref metadata, nearly 12.5 million have a corresponding ROR ID.**

The total overlap is even higher for DataCite, with **96.7% of funding assertions in DataCite having corresponding ROR IDs**, as shown below. 

{{< figure src="/img/blog/funder-overlap/datacite-funder-overlap.png" class="blog-figure" alt="Two pie charts, with the one on the left showing that 54.6% of organizations in the Open Funder Registry are available in ROR and the one on the right showing that 96.7% of Funder ID uses in DataCite records have a corresponding ROR ID" caption="DataCite - Aggregate ROR/Funder Registry OverlapTool view from the [ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app).">}} 

Just as in the previous view, the pie chart on the left shows that a majority of Funder IDs have an equivalent ROR ID, while the pie chart on the right shows that the overwhelming majority of DataCite funding assertions can be matched to a ROR ID, with **available ROR IDs for 941,049 of the 973,072 funding assertions in DataCite records.** 

In addition, while the preceding chart shows the number of funder assertions in DataCite records that _could_ be matched to a ROR ID, the data on the actual number of funder assertions in DataCite records that _currently use_ a ROR ID is also impressive. About 1.5 million DataCite records cite a funder in the `fundingReferences` element, and over 1.3 million of those also include connection metadata in the form of an identifier for that funder. As of this writing, the largest proportion of those 1.3 million funder identifiers are Funder IDs at 883,098 uses. ROR, however, is the next most commonly used identifier at 357,568 uses. 

{{% centered %}}
{{< figure src="/img/blog/funder-overlap/datacite-funder-ids-chart.png" class="" alt="" caption="ROR DOI stats, available [on the ROR website](https://ror.org/about#impact). See also the discussion of these statistics [during the September ROR Community Call](https://ror.org/events/2023-09-28-ror-community-call)."  >}} 
{{% /centered %}}


**Clearly, then, ROR is ready to take on the work that the Open Funder Registry is currently doing with regard to funding data in Crossref and DataCite records.**

ROR's curation team plans to continue adding entities listed in the Open Funder Registry to ROR based on priority and usage. You can help us determine what needs to be done by analyzing your own funder data with the [ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app/) that we've made available to help you in this transition.  


## Analyzing your own funder data

If you are a funder or if you work with Funder IDs, you can use [the ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app/) to look up any funder in the Open Funder Registry and find its equivalent ROR record. If the information in the ROR record needs a correction, or if there is no matching ROR record, you can request that ROR make the change from within the tool. 

{{< figure src="/img/blog/funder-overlap/funder-mapping-lookup.gif" alt="GIF showing how to look up the Arcadia Fund in the ROR / Funder overlap tool" caption="How to look up a funder such as the Arcadia Fund in the [ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app).">}} 

You can also look up how many of a particular Crossref member's funding assertions can be mapped to ROR IDs by choosing "Crossref - Overlap by Member" from the views on the left side of the screen. 

{{< figure src="/img/blog/funder-overlap/crossref-member-lookup.gif" alt="GIF showing how to look up the Crossref member Royal Society of Chemistry in the ROR / Funder overlap tool" caption="How to look up the funding assertions of a Crossref member such as the Royal Society of Chemistry in the [ROR / Funder Overlap tool](https://rorfunderoverlap.streamlit.app).">}} 

For instance, Crossref member the [Royal Society of Chemistry (RSC)](https://rsc.org) has as of this writing used Funder IDs over 478,000 times in Crossref metadata, and nearly 93% of these assertions can be matched to a ROR ID. Of the 9,000+ funders that RSC publications currently acknowledge in Crossref metadata, nearly 73% have corresponding ROR IDs. 

Remember, too, that the project of reconciling ROR to the Funder Registry has to date focused on making sure that frequently-asserted funders are accurately and fully represented in ROR rather than on trying to create a new ROR record for every single Funder Registry record. The work to reconcile the Funder Registry to ROR is ongoing, and over time we fully expect even more Funder IDs to have matching ROR IDs. 

We hope you find the ROR / Funder Registry Overlap tool useful in assessing funding data. We have made the [source code available on GitHub](https://github.com/ror-community/ror_funder_registry_overlap) for those who wish to examine or clone it. 


## Get ready and get in touch

**If you're already a user of the Open Funder Registry, you should start planning now to switch to ROR** – we're happy to work with you to make your transition to ROR easier. If you haven't yet adapted your systems to capture funding data in a structured way that uses persistent identifiers, we're also happy to work with you to help you integrate ROR. We all need clean, consistent, open, and interoperable information about all kinds of research organizations, including funders. 

In the coming months, Crossref will be publishing at least one blog post detailing the technical work they are doing to build comprehensive support for ROR into Crossref’s services, and Crossref and ROR will continue to consult with key users of the Open Funder Registry to learn what they want and need. 

Meanwhile, if you have questions or comments about ROR and the Open Funder Registry or if you'd like to contribute to our ongoing work to improve information about funders in ROR, **get in touch**! You can [book a meeting](https://calendly.com/ror-chat) with ROR Technical Community Manager Amanda French or write to her at [amanda@ror.org](mailto:amanda@ror.org). We look forward to hearing from you as all we prepare for these exciting changes together. 

---

[^1]: [Crossref API works with Funder IDs](http://api.crossref.org/works?filter=has-funder-doi:t)

[^2]: The number of Funder ID assertions in Crossref is derived from a sum of the results for the query https://api.crossref.org/funders/{funder_id}}/works for every Funder ID, e.g., https://api.crossref.org/funders/100000001/works 

[^3]: [Crossref API Funder Registry "work-count" and "descendant-work-count" for the U.S. National Science Foundation](http://api.crossref.org/funders/100000001)


{{% callout color="grey" icon="fa-envelope" %}}

Contact amanda@ror.org with any and all questions.  

{{% /callout %}}



