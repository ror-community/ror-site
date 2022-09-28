+++
title = "FAQs"
draft = false
date = "2022-09-26"
banner = "/img/banners/ROR_Banner-orange.jpg"
+++

{{% callout %}}
**Categories**
- General questions
- Scope
- ROR and other identifiers
- Using and integrating ROR
- Curation

{{% /callout %}}

## General questions

### **Who runs ROR?**

ROR is operated as a collaborative initiative by [California Digital Library](https://cdlib.org), [Crossref](https://crossref.org), and [DataCite](https://datacite.org), in conjunction with a broad network of community stakeholders. Read more about ROR’s [governance model](/about), [steering group](/community), and [community advisors](/community).

***

### **How is ROR funded?**

During its first few years, ROR relied on a mixed funding model that included in-kind support from the three ROR governing organizations, contributions from supporting organizations, and grants. ROR is transitioning to a resourcing model where all staffing and core expenses will be supported entirely by the three ROR governing organizations. Additional funding from community supporters or future grants will be used to offset operating costs and support time-limited projects. [Learn more about ROR’s business model](/about).

***

### **Does ROR have a roadmap?**

The [ROR roadmap](https://github.com/ror-community/ror-roadmap/issues) is available on Github.

***

### **How much does it cost to use ROR?**

ROR is freely and openly available to anyone. There is no cost to access and use ROR data and services.

***
### **Can I sign up to join ROR?**

ROR is not a membership organization. As a community-based initiative, ROR has open channels for community participation, such as joining the community advisory group or giving feedback on development work. [Learn more about how to get involved](/community).

***

## Scope

### **What is the definition of a research organization?**

ROR defines “research organization” as any organization that is involved in research. To meet this definition, an organization should be involved in research in one or more of the following ways:
- Producing research
- Funding research
- Employing researchers
- Facilitating research
- Managing research
- Publishing research
- Educating researchers

***

### **Is my organization in scope for ROR?**

ROR is focused on identifying “top-level” organization affiliations for research outputs. To meet the definition of “top-level” entity, an organization should be:

- A standalone organization
- Sufficiently independent from other organizations it might be related to
- Not a subdivision within an organization

Common types of entities that are out of scope for ROR include:
- Departments and subdivisions within organizations
- Journals
- Projects
- Companies that are not involved in research

***

### **Does ROR support relationships and hierarchies?**

[ROR metadata](https://ror.readme.io/docs/ror-data-structure) includes basic relationships and hierarchies between top-level organizations, such as medical centers affiliated with a research university.

***

## ROR and other identifiers

### **What is the difference between ROR and other organization identifiers?**

ROR is different from other organization identifiers in a few key ways:
- ROR is completely open (CC0 data, open API) and noncommercial
- ROR is focused specifically on identifying affiliations
- ROR is designed to be supported in core scholarly infrastructure (e.g., Crossref, DataCite, ORCID)
- ROR is developed as a community initiative

***

### **Is ROR the same thing as GRID?**

ROR first launched in 2019 using seed data from GRID, which had been selected as the foundational data source for ROR to start with and then build upon. As ROR began developing its technical infrastructure to support independent management of the registry, we coordinated updates via GRID and kept the two registries in sync while working toward a point of divergence.

In July 2021, [GRID announced its plans to sunset its public data and officially pass the torch to ROR](/blog/2021-07-12-ror-grid-the-way-forward). GRID published its final public release in September 2021 and removed its public IDs in July 2022. ROR and GRID officially diverged when ROR [published its first independent release](/blog/2022-03-17-first-independent-release) in March 2022.

***

### **What is the relationship between ROR and the Crossref Funder Registry?**

ROR has some overlap with the [Crossref Funder Registry](https://www.crossref.org/services/funder-registry/) because many funding organizations are also included in ROR. ROR IDs map to Funder Registry IDs when one is available. Crossref plans to merge the Funder Registry into ROR at some point in the future.

***

### **Is ROR supported in ORCID?**

ROR is [supported and integrated in ORCID in several ways](https://info.orcid.org/add-research-institution-identifiers-with-ror/). ROR can be used with ORCID’s API and Affiliation Manager to record research institution identifiers and metadata, and it is the default identifier for affiliations manually added to a user’s record.

***

## Using and integrating ROR

### **How do I integrate ROR in my system?**

The [ROR support site](https://ror.readme.io) offers guidance for those integrating ROR in their systems. If you need additional support, reach out via the technical support discussion forum or send an email to [support@ror.org](mailto:support@ror.org).

***

### **Does ROR have an API?**

ROR has a REST API that supports retrieving, searching and filtering organization records in the registry. Consult the ROR support site for [API documentation](https://ror.readme.io/docs/rest-api).

***

### **How can I download all of the ROR records?**

ROR records can be downloaded via the [public data dump](https://ror.readme.io/docs/data-dump), which is available on Zenodo.

***

### **What metadata is included in a ROR record?**

ROR is more than just an identifier: each record associated with a ROR ID contains useful information about the organization's name in multiple languages, acronyms, aliases, location, website, Wikipedia page, and other persistent identifiers. See the ROR support site for the full model of the [ROR data structure](https://ror.readme.io/docs/ror-data-structure).

***

### **What is the structure of the ROR identifier?**

ROR identifiers have a [predictable pattern](https://ror.readme.io/docs/ror-identifier-pattern) and can be validated with the regular expression ﻿﻿`^https://ror.org/^0[a-z|0-9]{6}[0-9]{2}$`. The canonical form of a ROR identifier value is the entire URL.

***

### **How should ROR IDs be displayed?**

In general, ROR IDs should operate behind the scenes, helping systems interoperate: there is usually no need for researchers to know the ROR ID of their institution and no need for institutions to display their own ROR ID. If you do choose to display ROR IDs and/or the ROR logo, please read and abide by our [display guidelines](https://ror.readme.io/docs/ror-id-display-guidelines).

***

### **Who is integrating ROR?**

ROR is being integrated by publishers, repositories, funding platforms, and other services. See a list of current [integrations](/community).

***

## Curation

### **Does my organization already have a ROR ID?**

You can check if an organization already has a ROR ID by looking up the organization in ROR’s [search interface](https://ror.org/search) or [API](https://api.ror.org/organizations).

***

### **How can I add my organization to ROR?**

To suggest a new organization to be added to ROR, submit feedback via the [curation request form](https://curation-request.ror.org).

***

### **How can I change the information in my organization’s ROR record?**

To request a change to an organization’s ROR record, submit feedback via the [curation request form](https://curation-request.ror.org).

***

### **Who is the contact person at my organization responsible for our ROR ID?**

The ROR registry is maintained through a centralized, community-based curation process. Organizations are not responsible for maintaining their own records in ROR. Anyone can suggest a new ROR record or a change to a ROR record.

***

### **How quickly can I get a new ROR ID?**

ROR is updated on a rolling basis. Every request needs to go through a curation process before it can be incorporated into ROR. We aim to process requests as quickly as possible, but the timelines can vary depending on the complexity of the request and the volume of requests in the backlog. Currently, releases are published approximately every month. You can track your request through the curation process by following it on [Github](https://github.com/ror-community/ror-updates/issues).

***

### **Can I send ROR a list of organizations to add?**

Contact [registry@ror.org](mailto:registry@ror.org) if you have a list of organizations you would like to suggest for ROR.

***

### **I submitted a request to ROR. How can I track it?**

After a request is submitted via the feedback form, an issue will be created in the [ror-updates Github repository](https://github.com/ror-community/ror-updates/issues) and added to a [project board](https://github.com/ror-community/ror-updates/projects/1). You can track the status of your request by following the repository and by signing up as a watcher on the issue associated with your request.

***

### **How will I know when ROR has been updated?**

ROR is updated on a rolling basis. New registry releases are published on Github and new data dumps are published on Zenodo approximately once a month. Following the [Github repository](https://github.com/ror-community/ror-updates/issues) and signing up to watch individual issues is the best way to be notified when a new release is available. Releases are also announced in the [ROR Slack](https://tinyurl.com/ror-slack), [technical support forum](https://groups.google.com/a/ror.org/g/ror-api-users), and on [Twitter](https://twitter.com/ResearchOrgs).
