+++
title = "Handling Organization Status Changes in ROR"
date = "2022-12-07"
draft = false
tags = ["Curation", "API", "Registry"]
categories = ["Technical News"]
archives = ["2022"]
style = "card-plain"
banner = "/img/banners/lions-ban.jpg"
thumb = "/img/lion-profile-bw-sq.jpg"
author = "Liz Krznarich"
+++

2022 was a big year for ROR in many ways, but it was especially notable from a tech standpoint. In early 2022, [we built tools and processes that allowed ROR to begin curating the registry separately from GRID](https://ror.org/blog/2022-03-17-first-independent-release/), which quickly opened possibilities for tackling projects that had been waiting on the back burner until ROR became fully independent.

One of these projects was handling cases where an organization’s status in ROR has changed - for example, it merged with another organization, it ceased to operate, or it was added to ROR in error.

## The challenge: Organizations change over time

ROR’s data model previously did not support capturing status changes or information about successor organizations (in the case where another organization carries on the work of a defunct organization). This led to a backlog of curation requests to update records for organizations that had merged, split, or disbanded that couldn’t be processed.

Another sticky situation ROR faced was that the original MVR (minimum viable registry) approach for ROR and the temporary syncing arrangement with GRID that was in place while ROR developed its independent curation infrastructure did not account for how to update organization records that GRID removed. Each time ROR ingested a new GRID dataset, any organizations no longer present in the new GRID dataset were removed from ROR. As a result, 1,295 previously-assigned ROR IDs failed to resolve. Clearly a problem for an identifier intended to be persistent!

The practice of deactivating records in GRID also entailed stripping the metadata associated with the records, so we needed to come up with a solution for restoring these deactivated records in ROR, reflecting the organizations’ statuses and metadata appropriately, and ensuring the affected ROR IDs would resolve.

## Developing a solution: It takes a village

As with all things ROR, developing and implementing a solution took a village (er, a community). We’re grateful to all those who participated in the steps along the way to making this project a reality:

- **June 2022: [Draft proposal](https://docs.google.com/document/d/1CK3-Q9T1jeZ-CDvsAZoeg5Ng7ljzVau6iE_NzN8Kw88) presented at community advisory meeting**, opened for public comment through July 2022. This proposal contained several metadata options for expressing organization status changes and successor organizations, as well as options for changes to ROR tools/services.
- **Aug 2022: [Final draft proposal](https://docs.google.com/document/d/13zFXGOuaEcgJlXz6gw9IOZUaP_khZ0d5r0nODFDyFfE) presented at community advisory meeting**
We received lots of input during the public comment period, and the community leaned heavily toward the simplest metadata solution: use the existing status and relationship fields.
- **Aug 2022: Identified and recreated the removed records using historic GRID data**, including their successor organizations (as identified by GRID)
- **Oct 2022: [Beta testing](https://github.com/ror-community/ror-roadmap/discussions/95) of the proposed approach** in the API, web search interface and data dump changes
- **Dec 2022: [Production release](https://ror.readme.io/changelog/2022-12-01-organization-status-changes)** of the API, web search interface and data dump changes and restoration of GRID-removed records

## Putting it into practice

After six months of planning, community input and implementation, we are thrilled to say that  all the changes needed to support non-active organizations were released to production on 1 Dec 2022, and records removed by GRID that previously failed to resolve have been restored! These changes are all considered “non-breaking” and include:

- Two new values, **inactive** and **withdrawn**, appear in the status field in a small number of ROR records. Previously, all records in ROR had a status of **active.** Inactive indicates that an organization has ceased operation (or ceased producing research outputs), while withdrawn indicates that a record was created in error or determined by the ROR curation team to no longer be in scope for ROR.
- Two new relationship types, **Predecessor** and **Successor**, appear in the relationships field in a small number of ROR records.
- API and [web search interface](https://ror.org/search) results now default to records with a status of **active** only.
- New filters and parameters in the API and the [web search interface](https://ror.org/search) allow users to find and exclude records based on status
- Data dump continues to include all records (with all statuses/relationship types). The first data dump that includes the new statuses and relationships types is v1.15 ([https://doi.org/10.5281/zenodo.7387951](https://doi.org/10.5281/zenodo.7387951)).

Check out the [release notes](https://ror.readme.io/changelog/2022-12-01-organization-status-changes), our [documentation](https://ror.readme.io/), and the examples below for full details about the changes.

## Examples

### Inactive organization

JDSU (United States) [https://ror.org/01a5v8x09](https://ror.org/01a5v8x09) split into two separate companies, and one of the new companies, Viavi Solutions (United States) [https://ror.org/059a9e323](https://ror.org/059a9e323), carries on its work. JDSU (United States) [https://ror.org/01a5v8x09](https://ror.org/01a5v8x09) now has a status of inactive and points to Viavi Solutions (United States) [https://ror.org/059a9e323](https://ror.org/059a9e323) as its successor. Viavi Solutions (United States) [https://ror.org/059a9e323](https://ror.org/059a9e323) now includes a predecessor relationship to JDSU (United States) [https://ror.org/01a5v8x09](https://ror.org/01a5v8x09). [See the curation request](https://github.com/ror-community/ror-updates/issues/485) that led to these changes.

{{< figure src="/img/jdsu-inactive.png" width="100%" >}}

### Restored record that previously did not resolve

Midwestern University was assigned ROR ID [https://ror.org/00zg0xv61](https://ror.org/00zg0xv61) and was subsequently removed by GRID. Prior to Dec 2022, its record did not resolve in ROR.

{{< figure src="/img/grid-removed-404.png" width="100%" >}}

The ROR curation team found that this record had been removed by GRID because it was a duplicate of an existing record with the same name [https://ror.org/046yatd98](https://ror.org/046yatd98), and should not have been added. [https://ror.org/00zg0xv61](https://ror.org/00zg0xv61) now has a status of withdrawn and points to [https://ror.org/046yatd98](https://ror.org/046yatd98) as its successor.

{{< figure src="/img/midwestern-withdrawn.png" width="100%" >}}

As always, please let us know of any issues or opportunities for improvement by submitting a [Github issue to the ROR roadmap](https://github.com/ror-community/ror-roadmap/issues) or contacting us at [support@ror.org](mailto:support@ror.org). To request new ROR records or updates to existing records, use the [curation request form](https://curation-request.ror.org).  Note that we do accept requests for new records with a status of inactive, in order to support community use cases around matching affiliation information in older metadata to ROR IDs.