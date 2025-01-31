+++ 
title = "Re-introducing Participation Reports to Encourage Best Practices in Open Metadata" 
date = "2024-07-25T11:32:47-04:00"
draft = false 
tags = ["Crossref", "Cross-post", "Adoption", "Integrations", "Metadata", "Publishers", "Open Infrastructure"] 
categories = ["Adoption News"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/prep/prep-2024-ror.png" 
images = ['/img/blog/prep/prep-2024-ror.png']
author = "Lena Stoll" 
description = "Crossref, with the help of CWTS Leiden, has just released an exciting update to their participation report, adding metrics for both affiliations in general and ROR IDs in particular. Now Crossref members can easily see how well they are doing in providing open affiliation metadata."
+++ 

{{< figure src="/img/blog/prep/prep-2024-ror.png" class="featured-figure" alt="University of Szeged ROR ID percentage shown in Crossref PREP" >}}

Crossref, with the help of [CWTS Leiden](https://www.cwts.nl/), has just released an exciting update to their participation report, adding metrics for both affiliations in general and ROR IDs in particular. Now Crossref members can easily see how well they're doing in providing open affiliation metadata. 

---

{{< callout color="green" icon="fa-copy" >}} 
The below is cross-posted from the Crossref blog.<br /> [Read the original post.](https://www.crossref.org/blog/re-introducing-participation-reports-to-encourage-best-practices-in-open-metadata/)
{{< /callout >}} 

We’ve just released an update to our [participation report](https://crossref.org/members/prep), which provides a view for our members into how they are each working towards best practices in open metadata. Prompted by some of the signatories and organizers of the [Barcelona Declaration](https://barcelona-declaration.org/), which Crossref supports, and with the help of our friends at [CWTS Leiden](https://www.cwts.nl/), we have fast-tracked the work to include an updated set of metadata best practices in participation reports for our members. The reports now give a more complete picture of each member’s activity.

## What do we mean by ‘participation’?

Crossref runs open infrastructure to link research objects, entities, and actions, creating a lasting and reusable scholarly record. As a not-for-profit with over 20,000 members in 160 countries, we drive metadata exchange and support nearly 2 billion monthly API queries, facilitating global research communication.

To make this system work, members strive to provide as much metadata as possible through Crossref to ensure it is openly distributed throughout the scholarly ecosystem at scale rather than bilaterally, thereby realizing the collective benefit of membership. Together, our membership provides and uses a rich nexus of information — known as [the research nexus](https://crossref.org/documentation/research-nexus) — on which the community can build tools to help progress knowledge.

Each member commits to certain terms, such as keeping metadata current, updating links for their DOIs to redirect to, linking references and other objects, and preserving their content in perpetuity. Beyond this, we also encourage members to register as much rich metadata as is relevant and possible.

Creating and providing richer metadata is a key part of participation in Crossref; we’ve long encouraged a more complete scholarly record, such as through [Metadata 20/20](https://metadata2020.org), and through supporting or leading initiatives for specific metadata, like open citations (I4OC), open abstracts (I4OA), open contributors ([ORCID](https://orcid.org)), and open affiliations ([ROR](https://ror.org)).

## Which metadata elements are considered best practices?

Alongside basic bibliographic metadata such as title, authors, and publication date(s), we encourage members to register metadata in the following fields:

{{< figure src="/img/blog/prep/prep-2024.png" alt="screenshot of Crossref participation report for member University of Szeged showing the 11 best practice metadata fields" caption="Example participation report for Crossref member University of Szeged" link="https://crossref.org/members/prep/5401" class="blog-figure" >}} 

### References

A list of all the references used by a work. This is particularly relevant for journal articles but the references can include any type of object, including datasets, versions, preprints, and more. Additionally, we encourage these to be added into [relationships](https://crossref.org/documentation/principles-practices/best-practices/relationships/), where relevant.

### Abstracts

A description of the work. These are particularly useful for discovery systems that will promote the work, and are often used in downstream analyses such as for detecting integrity issues.

### Contributor IDs (ORCID)

All authors should be included in a work’s metadata, ideally alongside their verified ORCID identifier.

### Affiliations / Affiliation IDs (ROR)

Members are able to register contributor affiliations as free text, but we are encouraging everyone to add ROR IDs for affiliations as the recommended best practice, as this differentiates and avoids mistyping. These two fields have newly been added to the participation reports interface in the most recent update.

### Funder IDs (OFR)

Acknowledging the organization(s) that funded the work. We encourage the inclusion of [Open Funder Registry](https://crossref.org//documentation/funder-registry/) identifiers to make the funding metadata more usable. This will evolve into [an additional use case for ROR](https://crossref.org//blog/open-funder-registry-to-transition-into-research-organization-registry-ror/) over time. 

### Funding award numbers / Grant IDs (Crossref)

A number or identifier assigned by the funding organization to identify the specific award of funding or other support such as use of equipment or facilities, prizes, tuition, etc. The [Crossref Grant Linking System](https://crossref.org//services/grant-linking-system/) includes a unique persistent link that can be connected with outputs, activities, people, and organizations.

### Crossmark

The [Crossmark service](https://crossref.org/services/crossmark/) gives readers quick and easy access to the current status of a record, including any corrections, retractions, or updates, via a button embedded on PDFs or a web article. Openly adding corrections, retractions, and errata is critical part of publishing, and the button provides readers with an easy in-context alert.

### Similarity Check URLs

The [Similarity Check service](https://crossref.org/services/similarity-check/) helps editors to identify text-based plagiarism through our collective agreement for the membership to access to Turnitin’s powerful text comparison tool, iThenticate. Specific fill-text links are required to participate in this service.

### License URLs

URLs pointing to a license that explains the terms and conditions under which readers can access content. These links are crucial to denote intended downstream use.

### Text mining URLs

Full-text URLs that help researchers in meta-science easily locate your content for text and data mining.

## What is a participation report?

Participation reports are a visualization of the data representing members’ participation to the scholarly record which is available via our open REST API. There’s a separate participation report for each member, and each report shows what percentage of that member’s metadata records include 11 key metadata elements. These key elements add context and richness, and help to open up members work to easier discovery and wider and more varied use. As a member, you can use participation reports to see for yourself where the gaps in your organization’s metadata are, and perhaps compare your performance to others. Participation reports are free and open to everyone - so you can also check the report for any other members you are interested in.

We first [introduced](https://crossref.org/blog/321-its-lift-off-for-participation-reports/) participation reports in 2018. At the time, Anna Tolwinska and Kirsty Meddings wrote:

> Metadata is at the heart of all our services. With a growing range of members participating in our community—often compiling or depositing metadata on behalf of each other—the need to educate and express obligations and best practice has increased. In addition, we’ve seen more and more researchers and tools making use of our APIs to harvest, analyze and re-purpose the metadata our members register, so we’ve been very aware of the need to be more explicit about what this metadata enables, why, how, and for whom.

All of that still rings true today. But as the research nexus continues to evolve, so should the tools that intend to reflect it. For example, in 2022, we removed the *Open references* field from participation reports after [a board vote to change our policy and update the membership terms](https://crossref.org/blog/amendments-to-membership-terms-to-open-reference-distribution-and-include-uk-jurisdiction/) meant that *all* references deposited with Crossref would be open by default. And now we’ve expanded the list of fields again, adding coverage data for contributor affiliation text and ROR identifiers.

## Putting it in practice

To find out how you measure up when it comes to participation, type the name of your member organization into the [search box](https://www.crossref.org/members/prep/). You may be surprised by what you find—we often speak to members who thought they were registering a certain type of metadata for all their records, only to learn from their participation report that something is getting lost along the way. 

You can only [address](https://crossref.org/documentation/register-maintain-records/maintaining-your-metadata/updating-your-metadata/) gaps in your metadata if you know that they exist.

More information, as well as a breakdown of the now 11 key metadata elements listed in every participation report and tips on improving your scores, is available in our [documentation](https://crossref.org/documentation/reports/participation-reports/).

And if you have any questions or feedback, come talk to us on the [community forum](https://community.crossref.org/) or request a metadata Health Check by emailing the [community team](mailto:feedback@crossref.org?subject=Participation%20reports%20and%20metadata%20health%20checks).


{{< callout icon="fa-envelope" >}} 

Write the Crossref Community team at [feedback@crossref.org](mailto:feedback@crossref.org?subject=Participation%20reports%20and%20metadata%20health%20checks) with any questions. 

{{< /callout >}} 