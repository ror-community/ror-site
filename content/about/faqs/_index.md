+++
title = "FAQs"
draft = false
date = "2019-06-20"
banner = "/img/banners/ROR_Banner-orange.jpg"
style = "card-plain"
+++

*Need quick information about ROR at a glance? Start here!*

## Using ROR data and services

All ROR IDs and metadata are provided under the [Creative Commons CC0 1.0 Universal Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0//).

There are no fees or access requirements for the ROR API and public data dump.

Learn more about working with ROR data and services on the [ROR support site](https://ror.readme.io).


## Core components

ROR's core components consist of the following:

**ROR ID** (Example: <https://ror.org/03yrm5c26>)
- Expressed as a URL that resolves to the organization's record     
- Unique and opaque character string: leading 0 followed by 6 characters (excludes I,L,O, and U) and a 2-digit checksum based on the Crockford base-32 url library and [ISO-7064](https://www.iso.org/standard/31531.html)     
- Crosswalks with other identifiers for the organization (GRID, ISNI, Crossref Funder Registry, Wikidata)  
- Metadata records associated with every ROR ID include basic information about an organization to help with discoverability and disambiguation (including alternate organization names, URL, location, and relationships to other organizations). ROR can support multiple languages and character sets (here is an example: <https://ror.org/01k4yrm29>).

**ROR search** (<https://ror.org/search>)

**ROR API** (<https://api.ror.org/organizations>) 

**ROR reconciler** (uses OpenRefine to map affiliations to ROR IDs) (<https://github.com/ror-community/ror-reconciler>) 

**ROR Github** (<https://github.com/ror-community>)  

**ROR data dump** (<https://zenodo.org/communities/ror-data>)

## Relationship to other identifiers

ROR is interoperable with other identifiers. ROR IDs map to GRID, ISNI, Crossref Funder ID, and Wikidata.

For ROR to be useful, it needs to augment the current offerings in a way that is open, trusted, complementary, and collaborative, and not intentionally competitive. We are committed to providing a service that the community finds helpful and not duplicative, and enables as many connections as possible between organization records across systems.

Some aspects of ROR that make it different from other identifiers are that the registry is (a) community-led, (b) completely open, and \(c) focused specifically on the affiliation use case.

## Affiliation use case

ROR's focus is the "affiliation use case" - identifying which organizations are associated with which research outputs. We use "affiliation" to describe any formal relationship between a researcher and an organization associated with researchers, including but not limited to their employer, educator, funder, or scholarly society.

## Criteria for inclusion in ROR

ROR is a registry of "research organizations." We define the "research organization" as any organization that conducts, produces, manages, or touches research. This is in line with ROR's stated scope, which is to address the affiliation use case and be able to connect organizations to research outputs. 

## Granularity and hierarchy

ROR is focused on being a top-level registry of organizations so we can address the fundamental affiliation use case, and provide a critical source of metadata that can interoperate with other institutional identifiers. ROR is therefore not focused on mapping university departments and similar sub-units within institutions. ROR's data and infrastructure are openly available for leverage by and interoperability with local-level efforts focused on mapping individual hierarchies within organizations.

## Requesting changes to ROR records

Use the [ROR curation request form](/curation) to request an update to an existing record in ROR or request that a new record be added. Read more about curation policies and processes [here](https://github.com/ror-community/ror-updates).

## Operations and governance

ROR operations are administered by California Digital Library, Crossref, and DataCite and advised by a larger [steering group](/about/#steering-group). The ROR steering group is responsible for strategic decision-making about governance, sustainability, and overall project direction.

There is also a [community advisory group](/community) of users and stakeholders from across the research sector who contribute to discussions and planning around issues such as data curation, policies, adoption, and engagement.

ROR is funded through partial in-kind support from its three operating organizations, time-limited grant funds, and contributions from organizations that support ROR. Learn more about ROR [supporters](/supporters).

## Integrations

ROR IDs are being implemented in various systems. See the [list of current and pending integrations](/integrations).

## Displaying ROR IDs

See the [ROR display guidelines](/display-guidelines) for information and best practices regarding the display of ROR IDs.
