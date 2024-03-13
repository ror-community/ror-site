+++
title = "ROR-ing on our own: Announcing our first independent registry update"
date = "2022-03-17"
draft = false
tags = ["Updates", "Curation", "Community"]
categories = ["updates"]
style = "card-plain"
banner = "/img/banners/city-ban.jpg"
thumb = "/img/fireworks-sq.jpg"
author = "Maria Gould"
+++

## **The ROR registry has grown!**
We are excited to announce a new ROR registry release. With this update, the registry has grown to 102,559 records.

This update is really exciting for many reasons. But we know some of you may be eager to skip ahead and check out the update right away. If that's you, here are the quick links:

- [ROR API](https://api.ror.org/organizations)
- [ROR search](https://ror.org/search)
- [ROR data dump](https://doi.org/10.5281/zenodo.6347575)
- [Release notes](https://github.com/ror-community/ror-updates/releases/tag/v1.0)
- [Documentation](https://ror.readme.io)

## **A key milestone for ROR**
This week's update represents a significant milestone for ROR and for the broader community, for a few reasons. 

### ROR is now officially independent from GRID
This registry update is the first one that ROR has handled completely on its own. This means it is the first version of the registry in which some ROR records will not have an equivalent GRID ID.

Many of you know the backstory, but here is a recap of where we started and how we got to this point: ROR first launched in 2019 using seed data from GRID, which had been selected as the foundational data source for ROR to start with and then build upon independently and with community input. As ROR began building the technical infrastructure to support independent management of the registry, we coordinated updates via GRID and kept the two registries in sync while working toward a point of divergence.

Although ROR always planned to diverge from GRID as an independent, community-oriented registry, GRID's future plans were not clear until mid-2021, when it announced that it would [retire from the public space at the end of the year and officially pass the torch to ROR](https://ror.org/blog/2021-07-12-ror-grid-the-way-forward/). *Note: If you are mapping GRID IDs to ROR IDs and need guidance, [this is a good place to start](https://ror.readme.io/docs/mapping).*

We are excited to have finally reached this long-awaited milestone of full independence!

### ROR has fully operationalized its unique community-based curation model

Launching with the GRID dataset as a seed file gave ROR a jump-start and meant that it did not have to build the registry from scratch. However, one aspect of ROR that was not part of the initial launch was a model for how the registry would be updated and maintained over time. This is because we wanted the community to start using ROR as quickly as possible and we wanted to make sure that we developed an approach to curation that was in line with community needs and community input.

After ROR launched, we held meetings with community stakeholders to discuss different approaches to curation and figure out what made the most sense for ROR. This led to the development of a community-based curation model that:

- **Decentralizes the feedback process** (anyone can submit feedback about registry additions or updates)
- **Centralizes the curation process** through a community curation board (to ensure consistency and integrity of metadata across the registry)
- **Makes the entire process open and transparent** (documenting pending changes in a public Github repository)

We began piloting this curation model while ROR was still coordinating updates through GRID. The registry update this week represents the first end-to-end completion of the new community-based process.

Read more about ROR's [curation model and current workflow](https://github.com/ror-community/ror-updates#readme). 

### ROR is now in a position to continue developing the registry further

While ROR was fortunate to be able to coordinate some registry updates through GRID in the beginning years after our launch, this arrangement was never intended to be a permanent solution. The dependency on GRID also limited our autonomy over the curation process and registry model. Now that we have our own independent infrastructure for maintaining ROR, we have the ability to explore further changes to the registry structure and functionality that community stakeholders have been interested in seeing.

## **Where we're going next**

While this release marks the culmination of lots of hard work, it is also just the beginning. Now that the ROR registry is officially being updated independently, we are excited to explore how we can further improve the existing dataset and help people use it.

For starters, there is some core functionality that was not in scope for our MVP launch but needs to be implemented as soon as possible. This includes the ability for ROR to handle records that have become inactive. ROR needs to be able to merge and redirect records to reflect organizational changes, and it needs to be able to deprecate IDs when an organization shuts down. While ROR IDs will never be deleted, it's still important that the registry reflects changes to an organization's status.

It is also clear from community feedback that the ROR data model needs to evolve, which is possible to do now that it is not tied to GRID. For example, we frequently get questions about the various name fields that ROR supports, which express different versions of organizations' names (versions in multiple languages, aliases and historical names, and acronyms). Name fields are important in ROR for representing organizational affiliations and for optimizing discovery and disambiguation. We think that ROR can and should improve how these fields are handled so that this metadata is as useful and as accurate as possible for our global community of users and integrators. We will be looking into this and other potential adjustments to the data model in consultation with the ROR curation advisory board and community members.

We also know that as ROR adoption continues to increase, ROR integrators need to be able to count on having comprehensive data and on being able to easily report issues or gaps in our records. We expect to see a greater need to support registry updates in bulk, and to establish automated ways of collecting feedback from system integrations. 

## **Questions you might have**

We hope that you are excited as we are about this milestone. We also know you might have some questions about what it means. Here are some things you might be wondering about and a few things that might be helpful to keep in mind:

- **How can I check what is in this release?** You can see a summary of the records added or updated in the [release notes](https://github.com/ror-community/ror-updates/releases/tag/v1.0). You can look up the IDs and metadata in the ROR production service via the [search UI](https://ror.org/search) ([documentation](https://ror.readme.io/docs/web-search)), [API](https://api.ror.org/organizations) ([documentation](https://ror.readme.io/docs/rest-api)), and [data dump](https://doi.org/10.5281/zenodo.6347575) ([documentation](https://ror.readme.io/docs/data-dump)).  
- **Has the data model changed from previous releases?** This release preserves ROR's existing [data structure](https://ror.readme.io/docs/fields), which was inherited from GRID. For the new and updated records included in the release, there are some slight differences in how we handle certain values in the location data (within the "addresses" array) because we are now pulling directly from Geonames based on a given location ID, and this was not always the case for previous releases.
- **I submitted a request - why isn't it in this release?** This release (v1.0) includes addition and update requests that ROR received from late 2020 through the end of 2021, along with a few that were submitted in early 2022. If you submitted a request and it was not included in this release, this could be because it was submitted in the past couple of months. Another reason is that your request may have been determined to be out of scope for ROR. If so, the Github issue should explain why. Some requests were also not included in this release because we did not have the functionality to process them. For instance, since we do not yet have the ability to merge, redirect, and deprecate records, these types of requests are currently on hold.  
- **Why did it take so long for this release to be completed?** We know that some of you submitted requests a while ago and expected a faster turnaround. While we were able to initiate workflows for reviewing and approving requests shortly after ROR's launch, we needed to build brand-new infrastructure to support the technical process by which the registry is updated (which includes generating and validating metadata, generating new ROR IDs, linking related records to each other, indexing the data, and deploying to our production services). This work ended up taking longer than expected for our small, minimally resourced team. Now that we have reached the critical milestone of publishing our first release with the new infrastructure, we assure you that the next releases will not take as long to complete!
- **So, when is the next release going to be?** Going forward, we plan to publish new releases on a regular and predictable basis, approximately quarterly. This is similar to the frequency with which the public GRID data used to be updated (which ROR would sync to). We will communicate more details about the release schedule when these are firmed up.
- **There's something wrong in the data - can you fix it?** If you have feedback about a specific organization record (whether it was part of this release or not), the best way to let us know is to submit the form available [here](https://ror.org/curation). If you have questions or feedback about the registry data overall, please [get in touch](mailto:info@ror.org) or post your question in the [technical support discussion forum](https://groups.google.com/a/ror.org/g/ror-api-users). Do keep in mind that ROR IDs do not change when a record is updated, so you can still use a ROR ID even if the metadata needs to be corrected.

## **Join us in growing the registry even further**

If you're excited about this milestone, or if you have opinions about the registry and what's in it, you can get involved in helping to make sure ROR is as useful, comprehensive, and up-to-date as possible. You can do this by:

- Submitting [feedback about registry additions or updates](https://ror.org/curation) (please review the scope and criteria before submitting)
- Getting involved as a member of the [ROR curation advisory board](https://github.com/ror-community/ror-updates/wiki/ROR-Curation-Advisory-Board-Overview) (contact <info@ror.org> to nominate yourself or someone else)
- Submitting [feedback on new features](https://github.com/ror-community/ror-roadmap/discussions) you would like to see
- Sign up your organization as a [sustaining supporter](https://ror.org/sustain) to ensure ROR has the resources to maintain and improve the registry's open infrastructure over the long term

## **A note of thanks**

Reaching this milestone would not have been possible without the involvement and contributions of many individuals and organizations.

In the first place, huge thanks to the team that brought this release to fruition:

- ROR Technical Lead **Esha Datta** developed the infrastructure and workflow for generating new and updated metadata records, indexing them in our API, and deploying the changes to production. 
- **Liz Krznarich** stepped into the Technical Lead role in February when Esha returned to her primary role at Crossref, and handled the final pieces of preparing the release and setting the foundation for future ones. 
- ROR's new Metadata Curation Lead, **Adam Buttrick**, joined the team in January and quickly developed tools and workflows for reviewing, preparing, and testing the updates in this release. 
- ROR's **[curation advisory board](https://ror.org/registry/#curation-advisory-board)** has been working for the past year to review and approve changes and to develop policies and workflows to guide these decisions.

Second, thanks are also due to **Digital Science**. ROR would not have such a comprehensive and useful dataset today if we had not been able to start with the seed file from GRID and coordinate updates through GRID for the past few years.

ROR was also fortunate to receive crucial assistance for this project through a [grant from the Institute of Museum and Library Services](https://www.imls.gov/grants/awarded/lg-246305-ols-20) (IMLS). We thank **IMLS** for supporting ROR's community-based approach to curation!

Last but certainly not least, thank you to the community members who have been supporting ROR through this transition. Whether you have submitted requests for new or updated records or contributed to early discussions about ROR's approach to curation, we know you have been eager for ROR to reach this milestone. We acknowledge and appreciate your patience!
