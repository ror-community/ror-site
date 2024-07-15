+++ 
title = "Using ROR for Funder Identification" 
date = "2024-07-14"
draft = false 
tags = ["funders", "adoption", "integrations", "implementation", "dryad"] 
categories = ["Use Cases"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/use-case-funders/ror-for-funders.png" 
images = ['/img/blog/use-case-funders/ror-for-funders.png']
author = "Amanda French" 
description = "Several widely used scholarly systems are using ROR IDs to identify and disambiguate funders. In this post, we'll give you a glimpse of how these early adopters of ROR IDs as funder identifiers have implemented this feature."
+++ 

{{< figure src="/img/blog/use-case-funders/ror-for-funders.png" alt="ROR logo and funder icon" class="featured-figure" >}}

Several widely used scholarly systems are using ROR IDs to identify and disambiguate funders. In this post, we'll give you a glimpse of how these early adopters of ROR IDs for funder identifiers have implemented this feature. 

If you're reading this post, you probably know that last fall, Crossref [announced](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/) "a long-term plan to deprecate the[ Open Funder Registry](https://www.crossref.org/services/funder-registry/)" so that publishing systems and workflows can use one open registry, not two, to identify organizations. If you're interested in learning more about that transition, you can consult our [Open Funder Registry transition guide](https://ror.readme.io/docs/funder-registry) or read [previous ROR blog posts](https://ror.org/tags/funders/). But if you're interested in learning more about the early adopters who are **already** using ROR to identify funders in production systems right now, read on. 


## Dryad

As the [very first system to adopt ROR](https://ror.org/blog/2019-07-10-ror-ing-together-with-dryad/) in 2019, Dryad has been using ROR for author affiliations longer than anyone else, and Dryad was almost as quick to adopt ROR for funding identification. Like many publishing and repository systems, Dryad originally used Crossref's Open Funder Registry to identify funders, but with the announcement that the Open Funder Registry is headed for deprecation, Dryad moved speedily to switch from Funder IDs to ROR IDs, completing the transition [in October 2023](https://github.com/datadryad/dryad-product-roadmap/issues/2840). 

Dryad's typeahead fields for "Institutional affiliation" and "Granting organization" both behave in the same way, helpfully revealing names, acronyms, and locations based on what the user types, just as we recommend in our [form guidelines](https://ror.readme.io/v2/docs/forms). 

{{< figure src="/img/blog/use-case-funders/dryad-national-cancer-center.gif" alt="Dryad's affiliation and funder fields use ROR to power typeahead lookups." caption="Dryad's affiliation and funder fields use ROR to power typeahead lookups.">}}

## Zenodo

In October 2023, the generalist data repository [Zenodo](https://zenodo.org) completed its [migration](https://blog.zenodo.org/2023/10/13/2023-10-13-zenodo-rdm/) to an open source research data management system called [InvenioRDM](https://inveniosoftware.org/products/rdm/). InvenioRDM was architected from the beginning with ROR for both author affiliations and funders, and other repositories that use InvenioRDM (e.g., [CaltechData](https://data.caltech.edu)) therefore have similar capabilities as Zenodo. 

Zenodo is one of seven participating repositories in [NIH's Generalist Repository Ecosystem Initiative (GREI)](https://datascience.nih.gov/data-ecosystem/generalist-repository-ecosystem-initiative) along with Dataverse, Dryad, figshare, Mendeley Data, OSF, and Vivli. The admirable aim of GREI is to develop "a common set of cohesive and consistent capabilities, services, metrics, and social infrastructure across generalist repositories" so that NIH-funded researchers can more easily discover and share their research data. GREI formed a task group on ROR implementation in 2023, and while all repositories have agreed to implement ROR for author affiliations, Zenodo was the first GREI system to use ROR for funder identification. 

Zenodo takes an "award-first" approach to connecting items to funders, asking the user to search for and select a specific award and then using the award identifier to pull in information about the funder who granted that award. Users also have the option to filter awards by a limited number of funders who participate in [OpenAire](https://www.openaire.eu/). Award numbers in Zenodo are not globally unique identifiers such as those issued by the [Crossref Grant Linking System](https://www.crossref.org/community/special-programs/grant-linking-system/), but rather are locally unique identifiers issued by the funder. 

{{< figure src="/img/blog/use-case-funders/zenodo-add-award.gif" alt="Zenodo's award lookup pulls in ROR IDs for funders on the back end." caption="Zenodo's award lookup pulls in ROR IDs for funders on the back end." >}}

## ChronosHub

[ChronosHub](https://chronoshub.io/), a comprehensive platform for managing Open Access fees and policy compliance, was one of the earliest systems to adopt ROR as a funder identifier: this integration is now nearly three years old. In the fall of 2021, ChronosHub published a [blog post explaining its new approach to supporting all institutional identifiers](https://chronoshub.io/news/latest-updates/updated-feature-first-to-support-all-institutional-identifiers/), including ROR, GRID, Ringgold, ISNI, and the Crossref Funder Registry. While "ChronosHub makes use of ROR IDs as standard," the post explains, the platform added "support for an automated mapping across all identifier databases, enabling seamless integrations and workflows." 

A few months later, at the ROR annual meeting in January 2022, ChronosHub's Martin Jagerhorn described in detail how and why their platform uses ROR at multiple points in the publication and post-publication process, enabling streamlining and automation of four distinct tasks: 

1. Submitting manuscripts to peer-review systems
2. Connecting manuscripts to the right institutional, publisher, and funder agreements 
3. Checking articles against all appropriate APC funding eligibility criteria and sending approvals and rejections
4. Depositing article metadata and full text to institutional repositories and CRIS systems

See the recording of Martin's presentation for more details. 

 {{< youtube id="mi-33M1yXI8" title="ROR & ChronosHub" >}}




{{% callout color="grey" icon="no-icon" %}}

Questions? Want your use case to be featured on our blog? Contact <community@ror.org>.

{{% /callout %}}