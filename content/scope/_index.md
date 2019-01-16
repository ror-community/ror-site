+++
title = "Scope"
draft = false
date = "2018-09-21"
banner = "/img/banners/ROR_Banner-pink.jpg"
style = "about"
+++

*Lightly adapted from the [Product Principles and Recommendations](https://figshare.com/articles/ORG_ID_WG_Product_Principles_and_Recommendations/5402047/1) of the original working group of the Org ID initiative in 2017*.

We are proposing the following service components for an open Research Organization Registry (ROR). The principles and recommendations draw from conversations of the Product Breakout group about the audience, use cases, personae, and curation processes.

## Scope

The Affiliation Use Case should be the main focus of an open Registry: proper description of relationships between contributors, contributions, research sponsors, publishers, and employers. The complexity of describing affiliation information for researchers increases dramatically when going further back in time, while at the same time the potential benefits of linking research outputs and their contributors to institutions decrease. For these reasons, ROR should focus on active researchers and their affiliation at present and in the recent (~5 years) past.

For the purposes of the open registry, “affiliation” describes any formal relationship between a researcher and an organization associated with researchers, including their employer, educator, funder, scholarly society, etc., and is not limited to employment.

### Who are the Users

There are several potential users of organization identifiers, for each sector in the research community.  In addition to organizational authorities, there are organizational users, as well as researchers, software developers, and people who are researching organizations.  To support these users, we propose a hybrid approach that blends staff-managed curation processes with an interface for organization authorities to view and securely manage their record.  It should also provide means for public view of record data, both in a “home page” user interface and API.  And, it should provide an administrative interface for customer service purposes. The support desk would work specifically with organizations on record use (and single-point cross walking), and assist with API usage. ROR would not be tasked with e.g., bulk data syncing but it should work with providers to enable cross-walking.

### Product Principles

There are several existing organization identifier registries. For ROR to be useful, it needs to augment the current offerings in a way that is open, trusted, complementary and collaborative, and not intentionally competitive. It needs to provide a service that the community finds helpful and not duplicative. The distinctive competencies of ROR are to provide the research community a Registry with open governance, provide institutions with a means to manage their own organization record, and to serve as a central point for communicating with current vendors to provide updates -- and in doing so to increase the use of organization identifiers in the community and enable connections between organization records in various systems.

In general, ROR should have the following features and services:

- Unique and persistent IDs for organizations in the research community
- IDs resolve to information about the entity: human- and machine-readable
- Open API/content negotiation
- Record editing interface for authorized entity representative
- Administrative facility to correct, manage, and crosswalk data, including assertion model and syncing with other PID providers
- Public data dump
- Common and uniform metadata set    

The ROR data model should focus on organization levels that are pertinent for the affiliation use case. The ROR data model should have a minimally-required metadata set to describe an organization, such as physical location (headquarters and/or mailing address city+country), electronic address (URL), persistent ID, organization name in official language and if available in Latin characters, and provenance (who made what assertion, when, and from what source).  In addition to the required data elements, the registry should include optional fields such as physical address (lat/long, street address), crosswalks to other IDs, variant names, organization sector, and [copyright requirements](https://en.wikipedia.org/wiki/Crown_copyright).

ROR data should be both human and machine readable, available through a web interface and APIs. Documentation about data models and APIs should be freely available to the community. Required ROR data must be openly reusable.

### Data Management

Building ROR requires community governance as well as deep community involvement in data quality. ROR should be started using GRID seed data, available without license restrictions and meeting minimum metadata requirements for unique identification.  Data may be obtained using an API and/or via bulk donation.

ROR should have a means for organizations to provide input for record creation and updates. After the initial seeding, ROR will build out tools to support record self-management by organizations. This means ROR will need to build hybrid record management processes - and engage with the community to encourage involvement. This raises specific questions of transparency, control, data quality, and effort.  Without transparent record management criteria and accountability of curators, the quality of ROR will suffer.

There is an inevitable need for processes to deal with record duplication, erroneous records, and relationships between records. Curators may have to make decisions that not only affect the metadata contained in the record or record creation but also establish relationships between these, through record redirection and record obsoletion. In cases of duplication or merger, records should be redirected to the relevant active record. In the rare cases where erroneous records have been created, there should be an obsoletion mechanism that identifies these records as such. When possible, ROR will engage with the entity itself to make record changes, and all changes (assertions) will be marked with provenance indicating who made the change and a timestamp.

---

## Recommendations

1. ROR is intended for use by the research community, for the purposes of increasing the use of organization identifiers in the community and enabling connections between organization records in various systems.

2.  ROR will derive utility through encouraging cross-talk between existing registry providers.

3. Access to organizations for managing ROR records shall be via permission. ROR will be responsible for granting record management permission.

4. ROR will focus on the organization levels that are most pertinent for the affiliation use case (who employs, who educates, who funds, etc.).

5. ROR will require metadata elements for each record sufficient to uniquely identify the organization.

6. ROR documentation and required metadata will be available for use under a recommended [Open Definition](http://opendefinition.org/licenses/) conformant license, in human- and machine-readable formats.

7. ROR will seek seed data from organization identifier providers who serve the research community, whose data meet the metadata requirements, and which data are available under a recommended [Open Definition](http://opendefinition.org/licenses/) conformant license.

8. There will be open criteria and documented processes for inclusion/exclusion, creating, merging, and deprecating a ROR record.

9. Record changes will be tracked and recorded using an open provenance model. ROR records may be deprecated, but no assigned identifier will be deleted.

10. ROR will be building a supporting new technology. We will maintain a robust customer support system and an open knowledge base to maintain a good relationship with the community’s technical teams.

---

## FAQs

#### What registry data are open?  What does “open” mean in this context?

- ROR documentation and required data will be available for use under a recommended Open Definition conformant license, in human and machine readable formats.

#### What are the specific components of the registry MVP? (MVP = Minimum Viable Product is a product with just enough features to gather validated learning about the product and its continued development.)

- In general, ROR should have the following features and services:

  - Unique and persistent IDs for organizations in the research community
  - IDs resolve to information about the entity: human and machine readable
  - Open API/content negotiation
  - Record editing interface for authorized entity representative
  - Administrative facility to correct, manage, and crosswalk data, including assertion model, and syncing with other PID providers
  - Public data dump
  - Common and uniform metadata set

#### How is this different from existing registries? What responsibilities does the registry have with respect to current stakeholders? Does it need to be a new registry? Do existing providers offer the product that meets these aims? How would they need to change in order to solve these problems?

- There are several existing organization identifier registries. For ROR to be useful, it needs to augment the current offerings in a way that is open, trusted, complementary and collaborative, and not intentionally competitive. It needs to provide a service that the community finds helpful and not duplicative. The distinctive competencies of ROR are to provide the research community a Registry with open governance, provide institutions with a means to manage their own organization record, and to serve as a central point for communicating with current vendors to provide updates -- and in doing so to increase the use of organization identifiers in the community and enable connections between organization records in various systems.

#### What features can/should be part of a subsequent version of the registry?

- After the initial seeding, ROR will build out tools to support record self-management by organizations. This raises specific questions of transparency, control, data quality, and effort.  Without transparent record management criteria and accountability, the quality of ROR will suffer.

####  What are the technical considerations for curation, and for updating of records? Given that not all organizations will engage, what solutions do we need to have in place (curation vs. self-management)?

- There is an inevitable need for processes to deal with record duplication, erroneous records, and relationships between records. Curators may have to make decisions that not only affect the metadata contained in the record or record creation but also establish relationships between these, through record redirection and record obsoletion. In cases of duplication or merger, records should be redirected to the relevant active record. In the rare cases where erroneous records have been created, there should be an obsoletion mechanism that identifies these records as such. When possible, ROR will engage with the entity itself to make record changes, and all changes (assertions) will be marked with provenance indicating who made the change and a timestamp.

#### How does the registry enforce uniformity of data, e.g. data structure and validation for business rules vs. open contribution?

- The ROR data model should focus on organization levels that are pertinent for the affiliation use case. The ROR data model should have a minimal required metadata set to describe an organization, such as physical location (headquarters and/or mailing address city+country), electronic address (URL), persistent ID, organization name in official language and if available in Latin characters, and provenance (who made what assertion, when, and from what source).  In addition to the required data elements, the registry should include optional fields such as physical address (lat/long, street address), crosswalks to other IDs, variant names, organization sector, and copyright requirements.

#### What types of roles/permissions are needed for the members of the organizations in the registry?

- ROR will derive utility through a hybrid staff- and organization-curation service model, and will encourage cross-talk between existing registry providers. Access to organizations for managing ROR records shall be via permission.

#### Who is the person/people that can assert relationships between organizations in the registry?  What sources of official information are available? How do we resolve conflicts?

- There will be open criteria and documented processes for inclusion/exclusion, creating, merging, and deprecating a ROR record. Record changes will be tracked and recorded using an open provenance model. ROR records may be deprecated, but no assigned identifier will be deleted. ROR will maintain a customer support ticketing system and an open knowledge base.

#### How do we account for the subtlety of organizations with regard to permissions and change history (merges, splits, etc.)? Where do we start? Do we build a historical record for what has already happened in the past or do we start from this point forward?

- The Affiliation Use Case should be the main focus of an open Registry: proper description of relationships between contributors, contributions, research sponsors, publishers, and employers. The complexity of describing affiliation information for researchers increases dramatically when going further back in time, while at the same time the potential benefits of linking research outputs and their contributors to institutions decrease. For these reasons, ROR should focus on active researchers and their affiliation at present and in the recent (~5 years) past.
