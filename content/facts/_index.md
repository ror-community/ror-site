+++
title = "Facts"
draft = false
date = "2019-06-20"
banner = "/img/banners/ROR_Banner-grey.jpg"
style = "card-plain"
+++

*Need quick information about ROR at a glance? Start here!*

## ROR data

ROR started with seed data from Digital Science's [GRID](https://grid.ac) database and began assigning ROR IDs to 91,000+ organizations. ROR updates its records when GRID releases a new database update. Ultimately the two registries will diverge. ROR records map to GRID IDs (along with other identifiers) and vice-versa.

ROR records include basic metadata about an organization (including name, alternate names, and location). Additional metadata will be added in the future. ROR can support multiple languages and character sets (here is an example: <https://ror.org/01k4yrm29>).

All ROR IDs and metadata are provided under the [Creative Commons CC0 1.0 Universal Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0//).

## Core components

ROR's core components consist of the following:

**ROR ID** (Example: <https://ror.org/03yrm5c26>)
- Expressed as a URL that resolves to the organization's record     
- Unique and opaque character string: leading 0 followed by 6 characters (excludes I,L,O) and a 2-digit checksum based on the Crockford base-32 url library and [ISO-7064](https://www.iso.org/standard/31531.html)     
- Crosswalks with other identifiers for the organization (GRID, ISNI, Crossref Funder Registry, Wikidata)     

**ROR search** (<https://ror.org/search>)

**ROR API** (<https://api.ror.org/organizations>) 

**ROR reconciler** (uses OpenRefine to map affiliations to ROR IDs) (<https://github.com/ror-community/ror-reconciler>) 

**ROR Github** (<https://github.com/ror-community>)  

**ROR data dump** (<https://figshare.com/collections/ROR_Data/4596503>)

## Affiliation use case

ROR's focus is the "affiliation use case" - identifying which organizations are associated with which research outputs. We use "affiliation" to describe any formal relationship between a researcher and an organization associated with researchers, including but not limited to their employer, educator, funder, or scholarly society.

## Criteria for inclusion in ROR

ROR is a registry of "research organizations." We define the "research organization" as any organization that conducts, produces, manages, or touches research. This is in line with ROR's stated scope, which is to address the affiliation use case and be able to connect organizations to research outputs. 

## Relationship to other identifiers

ROR is interoperable with other identifiers. ROR IDs map to GRID, ISNI, Crossref Funder ID, and Wikidata.

For ROR to be useful, it needs to augment the current offerings in a way that is open, trusted, complementary, and collaborative, and not intentionally competitive. We are committed to providing a service that the community finds helpful and not duplicative, and enables as many connections as possible between organization records across systems.

Some aspects of ROR that make it different from other identifiers are that the registry is (a) community-led, (b) completely open, and \(c) focused specifically on the affiliation use case.

## Granularity and hierarchy

ROR is focused on being a top-level registry of organizations so we can address the fundamental affiliation use case, and provide a critical source of metadata that can interoperate with other institutional identifiers. ROR is therefore not focused on mapping university departments and similar sub-units within institutions. ROR's data and infrastructure are openly available for leverage by and interoperability with local-level efforts focused on mapping individual hierarchies within organizations.

## Requesting changes to ROR records

Use the [ROR curation request form](/curation) to request an update to an existing record in ROR or request that a new record be added. We are formalizing data management policies and procedures in the next stage of the project.

## Operations and governance

ROR operations are administered by California Digital Library, Crossref, and DataCite and advised by a larger [steering group](/about/#steering-group). The ROR steering group is responsible for strategic decision-making about governance, sustainability, and overall project direction.

There is also a [community advisory group](/supporters) of 40+ volunteers from across the research sector who contribute to discussions and planning around issues such as data curation, policies, adoption, and engagement. ROR [supporters](/supporters) have also contributed financially.

## Integrations

ROR IDs are being implemented in various systems. See the [list of current and pending integrations](/integrations).
