+++
title = "Registry"
draft = false
date = "2022-07-21"
banner = "/img/banners/ROR_Banner-purple.jpg"
aliases = [
    "/curation",
    "/scope"
]
+++

{{% toc %}}


## Accessing the registry

The ROR registry is freely and openly available. There are no fees or access requirements for using ROR.

There are three ways to look up organizations and organization records in ROR:

- [ROR search](https://ror.org/search)
- [ROR API](https://api.ror.org/organizations)
- [Data dump](https://doi.org/10.5281/zenodo.6347574)

{{% callout icon="no-icon" %}}
**How often is ROR updated?**

Registry data is updated on a rolling basis and made available in the search interface, API, and data dump. New releases are available approximately every month. [Read the release notes](https://github.com/ror-community/ror-updates/releases) for a summary of what's in each release.

Registry updates are coordinated by ROR’s curation advisory board through an [open, community-based process](https://github.com/ror-community/ror-updates#ror-updates).

Want to suggest a new organization in ROR or make changes to an existing record? [Submit a curation request](https://curation-request.ror.org).

{{% /callout %}}

## Registry data
ROR registry records include a unique ID for each organization along with additional metadata about each organization to facilitate discovery and disambiguation. The ROR ID is expressed as a URL that resolves to the organization's record.

All ROR IDs and metadata are provided under the Creative Commons CC0 1.0 Universal Public Domain Dedication.

More information about the structure of the ROR identifier, the ROR metadata schema, and ROR API is available on the [ROR support site](https://ror.readme.io). 

## Scope and criteria for inclusion
ROR is a registry of "research organizations." We define "research organization" as any organization that conducts, produces, manages, or touches research.

ROR's aim is to address the "affiliation use case," which means identifying which organizations are associated with which research outputs. We use "affiliation" to describe any formal relationship between a researcher and an organization associated with researchers, including but not limited to their employer, educator, funder, or scholarly society.

ROR is focused on being a top-level registry of organizations so we can address the fundamental affiliation use case and provide a critical source of metadata that can interoperate with other institutional identifiers. ROR is therefore not focused on mapping university departments and similar sub-units within institutions. ROR's data and infrastructure are openly available for leverage by and interoperability with local-level efforts focused on mapping individual hierarchies within organizations.

## Relationship to other identifiers
ROR has some similarities with other organization identifiers but it differs from other identifiers in a few fundamental ways:

- ROR is completely open (CC0 data, open API)
- ROR is focused specifically on affiliations
- ROR is designed to be supported in core scholarly infrastructure (e.g., Crossref, DataCite, ORCID)
- ROR is developed as a community initiative

ROR IDs crosswalk to other open, globally used identifiers when they are available. These crosswalks currently include [ISNI](https://isni.org), [Crossref Funder Registry](https://www.crossref.org/services/funder-registry/), and [Wikidata](https://wikidata.org).

ROR initially launched with seed data from [GRID](https://grid.ac). ROR IDs were synced with GRID between January 2019 and March 2022. ROR IDs previously crosswalked to GRID IDs but these are being phased out of registry records as GRID has since sunset its publicly available IDs following its [announcement in July 2021](https://ror.org/blog/2021-07-12-ror-grid-the-way-forward/) that it would discontinue its public data offering.

## Curation model
Registry data is updated on a rolling basis. New releases are available approximately every month.

The process of registering ROR IDs and maintaining ROR records is different from the workflows for ORCID iDs and DOIs. Unlike ORCID iDs and DOIs, ROR IDs are created and maintained through a centralized, community-based curation process.

Anyone can suggest additions or updates to the registry via the [public request form](https://curation-request.ror.org). You do not need to be affiliated with an organization to suggest changes to the organization's record in ROR.

After a registry request is submitted, the proposed change is reviewed by ROR's metadata curation lead and curation advisory board to ensure it is in scope and in line with ROR's metadata policies.

Approved changes are assigned to a future release and the records go through a metadata preparation process and schema validation check before they are deployed on the ROR production site and made available in the ROR API and data dump.

The curation process is openly available on [Github](https://github.com/ror-community/ror-updates#ror-updates). Anyone can follow along with the curation process by watching individual [issues](https://github.com/ror-community/ror-updates/issues) and following their progress on the [ROR Updates tracker](https://github.com/ror-community/ror-updates/projects/1).

{{% callout icon="no-icon"%}}

**Why did ROR develop this curation model?**

ROR developed its curation model following discussions and consultations with community stakeholders about how to approach curation. A number of factors influenced the ultimate model that ROR employs today.

- Community stakeholders were not in agreement that organizations should control their own records
- ROR metadata is based on public information about organizations that can be easily verified
- Centralizing curation is a more scalable approach
- Allowing for broad community feedback leverages knowledge and expertise from across the community and helps to reinforce community ownership of ROR's infrastructure
- Centralizing the review and decision-making process ensures consistency and integrity of metadata across the entire registry

{{% /callout %}}

## Curation advisory board
In conjunction with the metadata curation lead, ROR's Curation Advisory Board reviews suggested updates to the registry and advises on curation practices and standards for ROR to implement.

**Current advisory board members**

- Matthias Liffers, Australian Research Data Commons
- Nick Lundvick, Argonne National Laboratory
- Carly Robinson, OSTI/DOE
- Arthur Smith, American Physical Society
- Shayn Smulyan, Crossref
- Martin Spenger, LMU Munich

Read more about the board's activities on [Github](https://github.com/ror-community/ror-updates/wiki/ROR-Curation-Advisory-Board-Overview) and [send us an email](mailto:registry@ror.org) if you are interested in getting involved.
