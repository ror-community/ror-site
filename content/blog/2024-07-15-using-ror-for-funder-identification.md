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
description = "Several widely used scholarly systems are using ROR IDs to identify and disambiguate funders. In this post, we’ll give you a glimpse of how and why these systems use ROR IDs for funder identifiers."
+++ 

{{< figure src="/img/blog/use-case-funders/ror-for-funders.png" alt="ROR logo and funder icon" class="featured-figure" >}}

Several widely used scholarly systems are using ROR IDs to identify and disambiguate funders. In this post, we’ll give you a glimpse of how and why these systems use ROR IDs for funder identifiers.

If you're reading this post, you probably know that last fall, Crossref [announced](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/) "a long-term plan to deprecate the[ Open Funder Registry](https://www.crossref.org/services/funder-registry/)" so that publishing systems and workflows can use one open registry, not two, to identify organizations. If you're interested in learning more about that transition, you can consult our [Open Funder Registry transition guide](https://ror.readme.io/docs/funder-registry) or read [previous ROR blog posts](https://ror.org/tags/funders/). But if you're interested in learning more about **early adopters who are using ROR to identify funders now**, read on. 

## Repositories are ahead of the curve thanks to GREI and DataCite

In general, **repository systems are doing better than publishing systems** in terms of adopting ROR for identifying funding organizations. One major factor in this phenomenon is the U.S. National Institutes of Health [Generalist Repository Ecosystem Initiative (GREI)](https://datascience.nih.gov/data-ecosystem/generalist-repository-ecosystem-initiative), which aims to develop "a common set of cohesive and consistent capabilities, services, metrics, and social infrastructure across generalist repositories" so that NIH-funded researchers can more easily discover and share their research data. Seven generalist repository systems are participating: [Dataverse](https://dataverse.org/), [Dryad](https://datadryad.org/), [figshare](https://figshare.com), [Mendeley Data](https://data.mendeley.com), the [Open Science Framework (OSF)](https://osf.io), and [Vivli](https://vivli.org). GREI formed a task group on ROR implementation in 2023, and all seven participating repository systems [agreed to implement ROR for author affiliations](https://medium.com/@blog-grei/kicking-off-greis-third-year-b8709ab45a48). While they were at it, some systems participating in GREI took the opportunity to implement ROR for funder identification sooner rather than later. 

Another factor that has driven early adoption of ROR for funder identification in repository systems is **DataCite's early support** for this use case. [DataCite](https://datacite.org), the DOI registration agency that most data repositories use, has [supported ROR identifiers in the fundingReferences element for nearly five years](https://datacite.org/blog/identify-your-affiliation-with-metadata-schema-4-3/), ever since schema 4.3 was released in August of 2019. This early schema change encouraged data repositories to send ROR IDs to DataCite in DOI metadata. Note, too, that DataCite is now [encouraging funders to register DOIs for awards](https://datacite.org/blog/guidance-for-registering-datacite-dois-for-awards/), and ROR is  DataCite's recommended funder identifier in award metadata.

DataCite's API shows that **nearly one-third of DataCite DOIs with an identifier in the funding reference use ROR** as the funder identifier. Out of a total of about 1.4 million DataCite DOIs with funding identifiers, over 432,000 of them include ROR IDs. This is a remarkable statistic given the widespread use of Crossref Funder IDs in publishing systems. 

{{< figure src="/img/blog/use-case-funders/DataCite_Funder_Metadata_by_ID_type_July_2024.png" alt="DataCite records that have a value in fundingReferences.funderIdentifier as of July 8, 2024, broken down by fundingReferences.funderIdentifier.Type." caption="DataCite records that have a value in <code>fundingReferences.funderIdentifier</code> as of July 8, 2024, broken down by <code>fundingReferences.funderIdentifier.Type</code>. See [ROR DOI stats](https://docs.google.com/spreadsheets/d/1RKc4HM2K3mXvlMuQt-pR4xXgQiOC2B8rMuaddBqEaMg/edit?usp=sharing) spreadsheet for queries and data." class="blog-figure">}}

DataCite's API also shows that all but one of top five providers of ROR IDs for funders are GREI participants: Dryad, Zenodo, and figshare have registered over 100,000 DOIs that use ROR IDs in funding references. An additional repository operated by the Leibniz Institute DSMZ, [Straininfo](https://straininfo.dsmz.de/) (a collection of data about microorganisms and cell cultures), has used ROR IDs for funder identification in over 300,000 DataCite DOIs.
 
{{< figure src="/img/blog/use-case-funders/datacite-ror-funders-clients.png" alt="DataCite's API shows the top providers of ROR IDs in funding references." caption="DataCite's API shows the top providers of ROR IDs in funding references. Query: [https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:ROR&page[size]=0](https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:ROR&page[size]=0)"  class="blog-figure">}}


## ROR for funders in Straininfo


## ROR for funders in figshare


## ROR for funders in Zenodo

In October 2023, the generalist data repository [Zenodo](https://zenodo.org) became the first GREI completed its [migration](https://blog.zenodo.org/2023/10/13/2023-10-13-zenodo-rdm/) to an open source research data management system called [InvenioRDM](https://inveniosoftware.org/products/rdm/). InvenioRDM was architected from the beginning with ROR for both author affiliations and funders, and other repositories that use InvenioRDM (e.g., [CaltechData](https://data.caltech.edu)) therefore have similar capabilities as Zenodo. 

Zenodo takes an "award-first" approach to connecting items to funders, asking the user to search for and select a specific award and then using the award identifier to pull in information about the funder who granted that award. Users also have the option to filter awards by a limited number of funders who participate in [OpenAire](https://www.openaire.eu/). Award numbers in Zenodo are not globally unique identifiers such as those issued by the [Crossref Grant Linking System](https://www.crossref.org/community/special-programs/grant-linking-system/), but rather are locally unique identifiers issued by the funder. 

{{< figure src="/img/blog/use-case-funders/zenodo-add-award.gif" alt="Zenodo's award lookup pulls in ROR IDs for funders on the back end." caption="Zenodo's award lookup pulls in ROR IDs for funders on the back end." >}}

## ROR for funders in Dryad

As the [very first system to adopt ROR](https://ror.org/blog/2019-07-10-ror-ing-together-with-dryad/) in 2019, Dryad has been using ROR for author affiliations longer than anyone else, and Dryad was almost as quick to adopt ROR for funding identification. Like many publishing and repository systems, Dryad originally used Crossref's Open Funder Registry to identify funders, but with the announcement that the Open Funder Registry is headed for deprecation, Dryad moved speedily to switch from Funder IDs to ROR IDs, completing the transition [in October 2023](https://github.com/datadryad/dryad-product-roadmap/issues/2840). 

Dryad's typeahead fields for "Institutional affiliation" and "Granting organization" both behave in the same way, helpfully revealing names, acronyms, and locations based on what the user types, just as we recommend in our [form guidelines](https://ror.readme.io/v2/docs/forms). 

{{< figure src="/img/blog/use-case-funders/dryad-national-cancer-center.gif" alt="Dryad's affiliation and funder fields use ROR to power typeahead lookups." caption="Dryad's affiliation and funder fields use ROR to power typeahead lookups.">}}



## Other systems that use ROR to identify funders


## What's next












{{% callout color="grey" icon="no-icon" %}}

Questions? Want your use case to be featured on our blog? Contact <community@ror.org>.

{{% /callout %}}