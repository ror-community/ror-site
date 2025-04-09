+++
title = "Schema Scheming: Evolving the ROR Data Model"
date = "2022-12-14"
draft = false
tags = ["Metadata", "Community", "API", "Data", "Schema", "Feedback"]
categories = ["Requests"]
archives = ["2022"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/ror-elements-tech-u-kenya.png"
authors = [ "Amanda French", "Liz Krznarich" ]
doi = "https://doi.org/10.71938/njsy-kh44"
+++

{{< callout color="green" icon="no-icon" >}} 

We've run several calls for feedback in 2022, but here's one you'll definitely want to chime in on: our **[draft proposal of major changes to the ROR data model for schema version 2.0](https://docs.google.com/document/d/1JNDMoKmjR2y0quWXwFfoJTsIttbltJVN0l5Wddw1cIk/edit?usp=sharing)**. Comments are open until **February 5, 2023**, and we hope to release version 2.0 of the ROR schema and API in late 2023.

{{< /callout >}} 


When [ROR diverged from GRID in March of 2022](https://ror.org/blog/2022-03-17-first-independent-release), it became possible for the first time to make changes to ROR's data model. Our first priority was to handle inactive organizations and other organization status changes, and the community solution, as it turned out, didn't involve any changes to the schema. We did the technical work to implement these organization status changes, and they were [moved into production on December 1st, 2022](https://ror.org/blog/2022-12-07-handling-org-status/). At the same time, knowing that both ROR's data model and its API will need to change in the future, we asked for feedback on a proposal to handle schema and API versioning, and the ROR community agreed on a [set of practices](https://docs.google.com/document/d/18nl6pq0kdCU5ApcdbNjKnV7xHIw9eEY7DJG1WHjaLSs/edit?usp=sharing) meant to make schema and API changes as painless as possible for ROR users.

With that necessary work done, **we are now proposing a number of significant changes to [metadata elements in ROR records](https://ror.readme.io/docs/data-structure)** -- removing some, changing others, adding a few, and generally rationalizing the whole schema. We expect ROR schema 2.0 to be a major overhaul: we think it's best to do a lot of big changes at once and get them over with so that future changes can be less disruptive.

ROR's current top-level [data structure](https://ror.readme.io/docs/data-structure):

{{< figure src="/img/ror-schema-1-0.png" class="blog-figure" alt="ROR data structure with 16 elements including name, id, addresses, etc." >}}

There are **four major categories of alteration** we're proposing for ROR schema 2.0:

-   Standardizing, clarifying, and reorganizing **name fields** (`name`, `aliases`, `labels`)

-   Removing repetitive, excessively granular **location** information retrieved from the GeoNames API (sub-fields in `addresses`)

-   Rethinking **web domain** information (`email_address`, `ip_addresses`, `links`)

-   Restructuring **external identifiers** to allow future addition or removal of identifier types without schema changes (sub-fields in `external_ids`)

-   Adding **administrative information such as created and last modified dates** 

These suggested changes come from ROR users, from metadata best practices, and from our own sense of what would make most sense for ROR. 

To give us feedback, **please leave comments in the [ROR Schema v2.0 draft proposal ](https://docs.google.com/document/d/1JNDMoKmjR2y0quWXwFfoJTsIttbltJVN0l5Wddw1cIk/edit?usp=sharing)** Google doc. If you prefer to give feedback privately or cannot access the Google doc, you can email your comments to [support@ror.org](mailto:support@ror.org). Your thoughts are more than welcome -- we rely on your input to guide us!

{{< iframe "https://docs.google.com/document/d/e/2PACX-1vR0k1VZwRDO7fF6c9R0FJWRa2Dpjedn_5IXkjdjjYbBKSgsqUA6UTVPufFrvcqsXnQiJa2wwjK1tfMH/pub?embedded=true" >}}
