+++ 
title = "Using ROR for Funder Identification" 
date = "2024-08-06"
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

Several widely used scholarly systems are using ROR IDs to identify and disambiguate funding organizations. In this post, we’ll give you a glimpse of how and why these systems use ROR IDs as funder identifiers.

If you're reading this post, you probably know that for the last ten years, [the Crossref Open Funder Registry](https://www.crossref.org/services/funder-registry/) (formerly FundRef) has been the default identifier for funding organizations. You might also know that last fall, Crossref [announced](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/) "a long-term plan to deprecate the Open Funder Registry" in favor of ROR so that publishing systems and workflows can use one open registry, not two, to identify organizations. If you're interested in learning more about that transition, you can consult our [Open Funder Registry transition guide](https://ror.readme.io/docs/funder-registry) or read [previous ROR blog posts](https://ror.org/tags/funders/). But if you're interested in learning more about **early adopters who are already using ROR to identify funders now**, read on. 


## Repositories are ahead of the curve 

In general, **repository systems are doing better than publishing systems** in terms of adopting ROR for identifying funding organizations. One major factor in this phenomenon is undoubtedly **DataCite's early support** for this use case. [DataCite](https://datacite.org), the DOI registration agency that most data repositories use, has [supported ROR identifiers in the fundingReferences element of its metadata schema](https://datacite.org/blog/identify-your-affiliation-with-metadata-schema-4-3/) since August of 2019. This early schema change encouraged data repositories to send ROR IDs to DataCite in DOI metadata. Note, too, that DataCite is now [encouraging funders to register DOIs for awards](https://datacite.org/blog/guidance-for-registering-datacite-dois-for-awards/), and ROR is DataCite's recommended funder identifier in award metadata.

DataCite's API shows that **nearly one-third of DataCite DOIs with an identifier in the funding reference use ROR** as the funder identifier. Out of a total of about 1.4 million DataCite DOIs with funding identifiers, over 432,000 of them include ROR IDs. 

{{< figure src="/img/blog/use-case-funders/datacite-funder-ids-by-type.png" alt="Funder identifiers by ID type in DataCite"  caption="DataCite records that have a value in <code>fundingReferences.funderIdentifier</code> as of July 15, 2024, broken down by <code>fundingReferences.funderIdentifier.Type</code>. See [ROR DOI stats](https://docs.google.com/spreadsheets/d/e/2PACX-1vQU_zvKDRXOFY56Zq6gAZyWBXWivQxPyDgAVP18bYDpNTgrM2pQFz4EzNc6I44kgTmhoVqkTJfef-HN/pubhtml) spreadsheet for queries and data." >}}

Another factor that has driven early adoption of ROR for funder identification in repository systems is the U.S. National Institutes of Health (NIH) [Generalist Repository Ecosystem Initiative (GREI)](https://datascience.nih.gov/data-ecosystem/generalist-repository-ecosystem-initiative), whose primary aim is to develop "a common set of cohesive and consistent capabilities, services, metrics, and social infrastructure across generalist repositories" so that NIH-funded researchers can more easily discover and share their research data. Seven generalist repository systems are participating: [Dataverse](https://dataverse.org/), [Dryad](https://datadryad.org/), [Figshare](https://figshare.com), [Mendeley Data](https://data.mendeley.com), the [Open Science Framework (OSF)](https://osf.io), and [Vivli](https://vivli.org). All seven have [agreed to implement ROR for author affiliations](https://medium.com/@blog-grei/kicking-off-greis-third-year-b8709ab45a48), and some have also taken the opportunity to implement ROR for funder identification sooner rather than later. Dryad, Figshare, Zenodo, and Vivli implemented ROR to identify funders in 2023; Dataverse and OSF are actively planning to use ROR for funders soon, and Mendeley Data will do so at some point in the future. When data repositories use ROR as a standard funder identifier, it enables all funders, including the NIH, to track research datasets resulting from their funding more easily. 

DataCite's API shows that all but one of top five providers of ROR IDs for funders are GREI participants: Dryad, Zenodo, and Figshare together have registered over 100,000 DOIs that use ROR IDs in funding references. An additional repository operated by the Leibniz Institute DSMZ, [StrainInfo](https://straininfo.dsmz.de/) (a collection of data about microorganisms and cell cultures), has used ROR IDs for funder identification in over 300,000 DataCite DOIs.

{{< figure src="/img/blog/use-case-funders/datacite-funder-ids-by-client.png" alt="Funder IDs by client in DataCite" caption="DataCite's API shows the top providers of ROR IDs in funding references. Note that `figshare.ars` includes [figshare.com](figshare.com), Figshare+, and other Figshare repositories. Query: `https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:ROR&page[size]=0`" >}}

Let's take a look at each of these systems to see how they've implemented ROR for funders. 

## Dryad is the first to switch to ROR for funder IDs

As the [very first system to adopt ROR](https://ror.org/blog/2019-07-10-ror-ing-together-with-dryad/) in 2019, Dryad has been using ROR for author affiliations longer than anyone else, and Dryad was almost as quick to adopt ROR for funding identification. Like many publishing and repository systems, Dryad originally used Crossref's Open Funder Registry to identify funders, but with the announcement that the Open Funder Registry is headed for deprecation, Dryad moved speedily to switch from Funder IDs to ROR IDs, completing the transition in [October 2023](https://github.com/datadryad/dryad-product-roadmap/issues/2840). This transition involved four main tasks: 


* Changing Dryad's submission form funder lookup to use ROR instead of the Funder Registry
* Converting existing Funder IDs in Dryad's data to ROR IDs
* Enabling the capacity to send ROR IDs in new metadata deposits to DataCite
* Updating the funder identifiers in Dryad's existing DataCite DOI records

We can see the result of Dryad's work in their submission form. Now, in Dryad, the typeahead fields for "Institutional affiliation" and "Granting organization" both use ROR, and both helpfully reveal organization names, acronyms, and locations based on what the user types, just as we recommend in our [form guidelines](https://ror.readme.io/v2/docs/forms). 

{{< figure src="/img/blog/use-case-funders/ror-dryad.gif" alt="Dryad's affiliation and funder fields use ROR to power typeahead lookups." caption="Dryad's affiliation and funder fields use ROR to power typeahead lookups." >}}


**Dryad is the only system of those we're discussing here to have transitioned entirely from using the Crossref Open Funder Registry for funder identification to using ROR for funder identification**: other systems have either started fresh with ROR or continue to use multiple registries.

## Zenodo's funder model is based on ROR 

Also in October 2023, the generalist data repository [Zenodo](https://zenodo.org) completed its [migration](https://blog.zenodo.org/2023/10/13/2023-10-13-zenodo-rdm/) to an open source research data management system called [InvenioRDM](https://inveniosoftware.org/products/rdm/). InvenioRDM was architected from the beginning with ROR for both author affiliations and funders, and other repositories that use InvenioRDM (e.g., [CaltechData](https://data.caltech.edu)) therefore have similar capabilities as Zenodo. 

Zenodo takes an "award-first" approach to connecting items to funders, asking the user to search for and select a specific award and then using the award identifier to pull in information about the funder who granted that award. Users also have the option to filter awards by a limited number of funders who participate in [OpenAIRE](https://www.openaire.eu/). Zenodo's "standard award" field pulls award and funder data from the [OpenAIRE Graph dataset](https://doi.org/10.5281/zenodo.10488385), which uses ROR as one of several organization identifier schemes. 

{{< figure src="/img/blog/use-case-funders/ror-zenodo-standard.gif" alt="Zenodo's award lookup pulls in both award and funder information from OpenAIRE" caption="Zenodo's award lookup pulls in both award and funder information from OpenAIRE. See the InvenioRDM documentation of [Awards (OpenAIRE)](https://inveniordm.docs.cern.ch/customize/vocabularies/funding/#awards-openaire) for more information." >}}

Users can also add a custom award – for instance, one that isn't provided by OpenAIRE – and the custom award lookup in Zenodo is powered exclusively by ROR data to suggest funders in the award lookup funder field. Zenodo shows both the country code and the unique portion of the ROR identifier next to the name of the funder in the list of suggestions. 

{{< figure src="/img/blog/use-case-funders/ror-zenodo-custom.gif" alt="Zenodo's custom award lookup uses ROR data to suggest funders." caption="Zenodo's custom award lookup uses ROR data to suggest funders." >}}

Zenodo communities can also be hosted by funders, and these funders can also be identified by ROR IDs, as is the case for the GREI community managed by NIH.

{{< figure src="/img/blog/use-case-funders/ror-zenodo-grei.png" alt="The NIH-funded GREI initiative maintains a community on Zenodo in which the NIH is associated with its ROR ID." caption="The NIH-funded GREI initiative maintains a community on Zenodo at [https://zenodo.org/communities/grei/](https://zenodo.org/communities/grei/) in which the NIH is associated with its ROR ID. " >}}

Zenodo also exposes funder information in its API at `https://zenodo.org/api/funders`. 

It's important to reiterate that this functionality isn't confined to Zenodo: the ROR-powered funder lookup is built into the system that runs Zenodo, [InvenioRDM](https://inveniosoftware.org/products/rdm/), so that anyone who uses InvenioRDM can also use ROR to identify funders. InvenioRDM's excellent documentation explains in detail how award and funder lookups work in the system and gives more detail about the ROR-based data model for funders. 

{{< figure src="/img/blog/use-case-funders/ror-inveniordm.png" alt="Documentation of the ROR-based funder model and award lookup in InvenioRDM, the open source system that runs Zenodo" caption="Documentation of the ROR-based funder model and award lookup in InvenioRDM, the open source system that runs Zenodo, available at [https://inveniordm.docs.cern.ch/customize/vocabularies/funding/](https://inveniordm.docs.cern.ch/customize/vocabularies/funding/)." >}}

**InvenioRDM is the first new repository system to launch with ROR as the basis of its organizational data model**, but it surely won't be the last new repository system to do so. 


## Figshare imports ROR from Dimensions

Both Figshare's central repository at [figshare.com](figshare.com) and Oxford University's Figshare-powered institutional repository at [https://portal.sds.ox.ac.uk/](https://portal.sds.ox.ac.uk/) (also available via [https://oxford.figshare.com](https://oxford.figshare.com)) are contributing a significant number of ROR IDs as funder identifiers to DataCite metadata. Figshare, like Zenodo, asks the user to enter an award number or title and then pulls in funding information based on that award; in this case, Figshare pulls the grant title, grant ID, funder name, and ROR ID from [Dimensions](https://www.dimensions.ai/) grant data and includes it in the Figshare item’s metadata record. 

{{< figure src="/img/blog/use-case-funders/ror-figshare.gif" alt="Figshare's award lookup pulls data from Dimensions, which includes ROR IDs." caption="Figshare's award lookup pulls data from Dimensions, which includes ROR IDs." >}}

ROR was [originally seeded](https://ror.org/about/#launch-of-the-ror-mvr) with the GRID organization identifiers and data used by Dimensions, so there is a [close relationship between ROR IDs and GRID IDs](https://grid.ac/), and most ROR and GRID records are [mapped to each other](https://ror.readme.io/v2/docs/data-structure#external_ids). Dimensions's support documentation [explains how ROR IDs are incorporated into its data](https://dimensions.freshdesk.com/support/solutions/articles/23000025993-how-are-organizations-represented-in-dimensions-): 

{{% callout  color="beige" icon="no-icon" %}}

**How are new ROR IDs added to Dimensions organization records?**

As part of every new organization data release we identify new ROR records, and examine each one of these for relevance to Dimensions, according to our inclusion criteria. Records that meet these criteria are added to Dimensions along with the relevant metadata.

**How is the ROR metadata maintained in Dimensions?**

We are also regularly checking for changes to ROR records which are already mapped to Dimensions organization records. When a mapped record changes in ROR, we examine if that change is also relevant for Dimensions and update relevant metadata as applicable.

{{% /callout %}}

The curation work that Dimensions performs means that organization information in Figshare, including ROR metadata for funding organizations, remains up to date. 


## StrainInfo uses ROR for funders

The largest provider of ROR IDs in DataCite funding references is a repository called [StrainInfo](https://straininfo.dsmz.de/), which is "a service developed to provide a resolution of microbial strain identifiers by storing culture collection numbers, their relations, and culture-associated data." StrainInfo is currently supported by the [NFDI4Microbiota](https://nfdi4microbiota.de/) consortium, which is funded by the [German Research Foundation (DFG)](https://gepris.dfg.de/gepris/projekt/460129525?language=en), and is developed and maintained by [Leibniz Institute DSMZ](https://www.dsmz.de/). 

{{< figure src="/img/blog/use-case-funders/ror-straininfo.png" alt="Example of a strain catalogued in StrainInfo. Note the DataCite DOI in the upper left." caption="Example of a strain catalogued in StrainInfo. Note the DataCite DOI in the upper left." >}}

StrainInfo indexes more than 290,000 microbial strains, each of which has its own DOI registered with DataCite, and each of which contains a funding reference in the metadata to award 460129525 issued by the German Research Foundation (DFG), whose ROR ID is [https://ror.org/018mejw64](https://ror.org/018mejw64).  

{{< figure src="/img/blog/use-case-funders/ror-straininfo-datacite.png" alt="DataCite metadata for https://doi.org/10.60712/SI-ID34969.2" class="blog-figure" caption="DataCite metadata for [https://doi.org/10.60712/SI-ID34969.2](https://doi.org/10.60712/SI-ID34969.2) available at `https://api.datacite.org/dois/10.60712/SI-ID34969.2`." >}}

Thus, while StrainInfo is currently responsible for the largest number of DOI records with ROR IDs in the `funderIdentifier` field to DataCite, all 300,000+ of those records (including versions with updated data for several strains) reference a single funder with a single ROR ID. As Ted Habermann noted in his 2019 piece [How Many RORs Do We Need?](https://doi.org/10.59350/4tbaw-m9382), it's good news for ROR adoption that "some DataCite members only need to know a small number of RORs," since this can make implementation of ROR quite a bit easier.  

## Many more systems use ROR for funders

The systems reviewed here are by no means the only ones using ROR IDs to identify funders.  Here's an alphabetical list of additional systems that are currently using ROR IDs for funder identification:

* [CHORUS Dashboard and Reporting Services](https://chorusaccess.org)
* [ChronosHub Open Access Management Platform](https://chronoshub.io/)
* [DOE Award DOI Service](https://www.osti.gov/award-doi-service/)
* [DSpace 8](https://wiki.lyrasis.org/display/DSDOC8x/DSpace+8.x+Documentation)
* [DSpace-CRIS](https://wiki.lyrasis.org/display/DSPACECRIS)
* [FAIRsharing](https://fairsharing.org)
* [Genomes OnLine Database (GOLD)](https://gold.jgi.doe.gov/index)
* [Japan Link Center (JALC)](https://japanlinkcenter.org/)
* [MasterVision and PaperStack by DataSalon](https://www.datasalon.com)
* [OA.Report](https://oa.report)
* [OpenAlex](https://openalex.org)
* [ORCID](https://orcid.org)
* [ProposalCentral by Altum](https://proposalcentral.com/)
* [RADAR](https://radar.products.fiz-karlsruhe.de/en/radarabout/ueber-radar)
* [Sherpa Services](https://www.sherpa.ac.uk/)
* [Vivli Center for Global Clinical Research Data](https://vivli.org)

See the [full list of ROR Integrations](https://bit.ly/ror-integrations) to see more systems that are using or planning to use ROR for all kinds of purposes beyond funder identification – author affiliations, Open Access deal management, publisher identification, internal statistics, and more. If you're managing a system that uses ROR for funder identification and you don't see it listed here, [let us know](https://bit.ly/ror-integration-form)! 

## What's next

**More and more systems will be using ROR to identify funders** in the coming months and years as the deprecation of the Open Funder Registry nears. Crossref [has been working hard](https://www.crossref.org/blog/roring-ahead-using-ror-in-place-of-the-open-funder-registry/) on building support for publishers to deposit ROR IDs as funder identifiers, and this capacity will be released before the end of the year. Moreover, as more and more funders register DOIs for awards using [DataCite](https://support.datacite.org/docs/registering-datacite-dois-for-awards) or the [Crossref](https://www.crossref.org/documentation/research-nexus/grants/), they will undoubtedly begin by using ROR IDs to identify their own organization as well as other funding institutions.

"**Open funding metadata is arguably the next big thing**," [avers a recap of a funding metadata workshop](https://www.crossref.org/blog/open-funding-metadata-community-workshop-report/) convened by Crossref last year, for many reasons: "meta-researchers need this information in order to analyze research on research, editors are concerned with research integrity, including funding trends, and funders themselves need to track the reach and return of their support." This year alone, several lively discussions of how to improve funding metadata through the use of persistent identifiers in published research have been held, including:



* ROR Annual Meeting, [Why We All Need Good Funding Metadata](https://ror.org/events/2024-01-31-why-we-all-need-good-funding-metadata/), January 2024
* Altum webinar, [Advancing Research with Persistent Identifier (PID) Innovations](https://pages.altum.com/persistent-identifier-webinar), February 2024
* CHORUS Forum, [Navigating the Future of PIDs in Scholarly Publishing](https://www.chorusaccess.org/events/chorus-forum-navigating-the-future-of-persistent-identifiers-pids-in-scholarly-publishing-challenges-risks-and-opportunities/), May 2024

The other commonly mentioned "next big thing," AI, or more precisely machine learning, also has a bearing on funding metadata: Crossref and ROR are collaborating on an exciting project to build and evaluate robust, large-scale [matching](https://ror.org/tags/matching) strategies that can reliably connect tens of thousands of funder names in Crossref metadata to ROR IDs. Nevertheless, because any such automated post-processing of metadata is bound to have some errors, it's important that good funding metadata be created and reviewed by humans as far upstream as possible, ideally during the manuscript submission process or publishing production process. 

**So, in short, if you're in charge of a scholarly publishing system or workflow that's using the Open Funder Registry or one that isn't using funder identifiers at all, you should be thinking about using ROR.** We're here to help! 

* Are you using the Open Funder Registry? Start by consulting our [Funder Registry Transition Guide](https://ror.readme.io/docs/funder-registry).
* Are you new to persistent identifiers and/or ROR? Start by browsing through our [technical documentation](https://ror.readme.io). 

ROR is a responsive, open, community-led endeavor, and we're happy to work with you to integrate ROR IDs into your scholarly publication metadata. 

{{% callout icon="fa-envelope" %}}

Still have questions? Write to us at [support@ror.org](mailto:support@ror.org). 

{{% /callout %}} 
