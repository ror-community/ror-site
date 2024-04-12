+++
title = "Registry"
draft = false
date = "2022-07-21"
banner = "/img/banners/ROR_Banner-purple.jpg"
aliases = [
    "/curation", "/scope"
]
+++

{{% toc %}}

## Submitting registry updates

The process of registering ROR IDs and maintaining ROR records is different from the workflows for ORCID iDs and DOIs. Unlike ORCID iDs and DOIs, ROR IDs are created and maintained through a centralized, community-based curation process.

Anyone can suggest additions or updates to the registry. You do not need to be affiliated with an organization to suggest changes to the organization's record in ROR.

{{% centered %}}

{{% button color="green" link="https://curation-request.ror.org" %}} Request a change to the registry {{% /button %}}

{{% /centered %}}

After a registry request is submitted, the proposed change is reviewed by ROR's metadata curation lead and curation advisory board to ensure it is in scope and in line with ROR's metadata policies. Approved changes are assigned to a future release and the records go through a metadata preparation process and schema validation check before they are deployed on the ROR production site and made available in the ROR API and data dump.

Registry data is updated on a rolling basis. New releases are available at least once every month, so the time between when a request is made and when the approved change appears in the registry is usually 2-4 weeks. Not all requests are approved.

If you have more than one request, please submit a separate request form for each organization/record or [create the corresponding issues in our ror-updates GitHub repository](https://github.com/ror-community/ror-updates/issues/new/choose). The latter method requires a GitHub account, but it is generally faster to create a GitHub issue than to complete the form. If you have a large number of requests, please contact registry@ror.org for assistance. For bulk request processing time, see [How long will it take for my bulk request to be processed?](/about/faqs/#how-long-will-it-take-for-my-bulk-request-to-be-processed)

The curation process is openly available on [GitHub](https://github.com/ror-community/ror-updates). Anyone can follow along with the curation process by visiting the [issues queue](https://github.com/ror-community/ror-updates/issues) of change requests or the  [ROR Updates tracker](https://github.com/ror-community/ror-updates/projects/1).

{{% callout icon="no-icon"%}}

**Why did ROR develop this curation model?**

ROR developed its curation model following discussions and consultations with community stakeholders about how to approach curation. A number of factors influenced the ultimate model that ROR employs today.

- Community stakeholders were not in agreement that organizations should control their own records
- ROR metadata is based on public information about organizations that can be easily verified
- Centralizing curation is a more scalable approach
- Allowing for broad community feedback leverages knowledge and expertise from across the community and helps to reinforce community ownership of ROR's infrastructure
- Centralizing the review and decision-making process ensures consistency and integrity of metadata across the entire registry

{{% /callout %}}

## Scope and criteria for inclusion
ROR is a registry of "research organizations." We define "research organization" as any organization that conducts, produces, manages, or touches research.

ROR's primary aim is to address the "affiliation use case," which means identifying which organizations are associated with which research outputs. We use "affiliation" to describe any formal relationship between a researcher and an organization associated with researchers, including but not limited to their employer, funder, or publisher. Therefore, one of the most important criteria we use to decide whether to add an organization to ROR is whether researchers list that organization as an affiliation in existing published research outputs.

ROR is focused on being a high-level registry of organizations so we can address the fundamental affiliation use case and provide a critical source of metadata that can interoperate with other institutional identifiers. ROR is therefore not focused on mapping departments within institutions, though some sub-units such as research institutes and laboratories are in scope. ROR's data and infrastructure are openly available for leverage by and interoperability with local-level efforts focused on mapping individual hierarchies within organizations.

One of the primary criteria we use for evaluating whether an organization is in scope for ROR is **whether the organization is used as a creator’s affiliation or acknowledged as a funder in published research**. See also ["Is my organization in scope for ROR?"](/faqs/#is-my-organization-in-scope-for-ror) and the [Curator Evaluation Workflow](https://github.com/ror-community/ror-updates/wiki/Curator-Evaluation-Workflow:-New-Records) that ROR curators use to determine whether to add a new organization to ROR.

## About registry data 
ROR registry records include a unique ID for each organization along with additional metadata about each organization to facilitate discovery and disambiguation. The ROR ID is expressed as a URL that resolves to the organization's record. [Search the ROR registry](https://ror.org/search) to see examples of ROR records and IDs.

All ROR IDs and metadata are provided under the Creative Commons CC0 1.0 Universal Public Domain Dedication.

As of April 2024, ROR maintains two versions of its metadata schema. [Version 1 of the ROR metadata schema](https://ror.readme.io/v1/docs/data-structure) will be supported through at least April 2025; [version 2 of the ROR metadata schema](https://ror.readme.io/v2/docs/data-structure) is the current recommended version.

More information about the structure of the ROR identifier, the ROR metadata schema, and ROR API is available in [ROR's documentation](https://ror.readme.io). 

ROR has some similarities with other organization identifiers, but it differs from them in a few fundamental ways:

- ROR is completely open (CC0 data, open API)
- ROR is focused specifically on researcher affiliations and research funding acknowledgements
- ROR is designed to be supported in core scholarly infrastructure (e.g., Crossref, DataCite, ORCID)
- ROR is developed as a community initiative

ROR IDs crosswalk to other open, globally used identifiers when they are available. These crosswalks currently include [ISNI](https://isni.org), [Crossref Funder Registry](https://www.crossref.org/services/funder-registry/), and [Wikidata](https://wikidata.org).

ROR initially launched with seed data from [GRID](https://grid.ac). ROR IDs were synced with GRID between January 2019 and March 2022. GRID has since sunset its publicly available IDs following its [announcement in July 2021](https://ror.org/blog/2021-07-12-ror-grid-the-way-forward/) that it would discontinue its public data offering. ROR records still include GRID IDs, but GRID IDs no longer resolve to public web pages. 

## Accessing the registry

The ROR registry is freely and openly available. There are **no fees or access requirements** for using ROR. There are three ways to look up organizations and organization records in ROR:

#### Web search
- Search ROR on the web at [https://ror.org/search](https://ror.org/search)
- Read the [ROR web search documentation](https://ror.readme.io/docs/web-search)

#### REST API
- Access version 1 of the ROR REST API at [https://api.ror.org/v1/organizations](https://api.ror.org/v1/organizations)
- Read the [ROR REST API v1 documentation](https://ror.readme.io/v1/docs/rest-api)
- Access version 2 of the ROR REST API at [https://api.ror.org/v2/organizations](https://api.ror.org/v2/organizations)
- Read the [ROR REST API v2 documentation](https://ror.readme.io/v2/docs/rest-api)
- Join the [ROR Tech Forum](https://groups.google.com/a/ror.org/g/ror-tech) to receive important announcements about the ROR API

#### Dataset
- Download the entire ROR dataset in JSON and CSV format at [https://doi.org/10.5281/zenodo.6347574](https://doi.org/10.5281/zenodo.6347574)
- Read the [ROR data dump documentation](https://ror.readme.io/docs/data-dump)
- Join the [ROR Tech Forum](https://groups.google.com/a/ror.org/g/ror-tech) to receive announcements about new releases of ROR data


{{% callout icon="no-icon" %}}
**How often is ROR updated?**

Registry data is updated on a rolling basis and made available in the search interface, API, and data dump. New releases are available approximately every month. [Read the release notes](https://github.com/ror-community/ror-updates/releases) for a summary of what's in each release. Registry updates are coordinated by ROR’s curation advisory board through an [open, community-based process](https://github.com/ror-community/ror-updates#ror-updates).

Want to suggest a new organization in ROR or make changes to an existing record? 

{{% button color="green" link="https://curation-request.ror.org" %}} Request a change to the registry {{% /button %}}

{{% /callout %}}


## Curation Advisory Board
In conjunction with the metadata curation lead, ROR's Curation Advisory Board reviews suggested updates to the registry and advises on curation practices and standards for ROR to implement.

**Current Curation Advisory Board members**

- Jackson Huang, Educopia
- Kateřina Janderová, Czech Academy of Sciences
- Matthias Liffers, Australian Research Data Commons
- Nick Lundvick, Argonne National Laboratory
- Carly Robinson, OSTI/DOE
- Arthur Smith, American Physical Society
- Shayn Smulyan, Crossref
- Martin Spenger, LMU Munich

Read more about the board's activities on [GitHub](https://github.com/ror-community/ror-updates/wiki/ROR-Curation-Advisory-Board-Overview).

{{% callout icon="fa-envelope" %}}

Contact <registry@ror.org> with questions or comments about ROR Registry data or if you are interested in volunteering for the Curation Advisory Board. 

{{% /callout %}}
