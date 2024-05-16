+++
title = "Metadata Matching 101: What Is It and Why Do We Need It? (cross-post)"
date = "2024-05-16"
draft = false
tags = ["funders", "curation", "data", "machine-learning", "matching" ]
categories = ["Explainers"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/blog/matching101/yellow-matching-thumb.png"
images = ['/img/blog/matching101/yellow-matching-thumb.png']
author = "Dominika Tkaczyk and Adam Buttrick"
description = "In this blog, the first one in a series about metadata matching, we will cover the very basics of matching: what it is, how we do it, and why we devote so much effort to this problem."
+++

ROR Curation Lead Adam Buttrick has been working with Crossref Head of Strategic Initiatives Dominika Tkaczyk to explore improvements in automatic metadata matching strategies that can result in better metadata for everyone. Read more about this important work here. 

{{% callout color="green" icon="no-icon" %}}

**The below is cross-posted from the Crossref blog. [Read the original post.](https://www.crossref.org/blog/metadata-matching-101-what-is-it-and-why-do-we-need-it/)**  

{{% /callout %}}

At Crossref and ROR, we develop and run processes that match metadata at scale, creating relationships between millions of entities in the scholarly record. Over the last few years, we've spent a lot of time diving into details about metadata matching strategies, evaluation, and integration. It is quite possibly [our](https://crossref.org/blog/matchmaker-matchmaker-make-me-a-match/) [favourite](https://crossref.org/blog/reference-matching-for-real-this-time/) [thing](https://crossref.org/blog/what-if-i-told-you-that-bibliographic-references-can-be-structured/) to [talk](https://www.youtube.com/watch?v=Tx5y7lX030U) and [write](https://crossref.org/blog/follow-the-money-or-how-to-link-grants-to-research-outputs/) [about](https://crossref.org/blog/discovering-relationships-between-preprints-and-journal-articles/)! But sometimes it is good to step back and look at the problem from a wider perspective. In this blog, the first one in a series about metadata matching, we will cover the very basics of matching: what it is, how we do it, and why we devote so much effort to this problem.

## What is metadata matching?

Would you be able to find the DOI for the work referenced in this citation?

```Everitt, W. N., & Kalf, H. (2007). The Bessel differential equation and the Hankel transform. Journal of Computational and Applied Mathematics, 208(1), 3–19.```

We bet you could! You might begin, for example, by pasting the whole citation, or only the title, into a search engine of your choice. This would probably return multiple results, which you would quickly skim. Then you might click on the links for a few of the top results, those that look promising. Some of the websites you visit might contain a DOI. Perhaps you would briefly compare the metadata provided on the website against what you see in the citation. If most of this information matches (see what we did there?), you would conclude that the DOI from that website is, in fact, the DOI for the cited paper.

Well done! You just performed metadata matching, specifically, bibliographic reference matching. Matching in general can be defined as the task or process of finding an identifier for an item based on its structured or unstructured "description" (in this case: finding a DOI of a cited article based on a citation string).

But matching doesn't have to just be about citations and DOIs. There are many other instances of matching we can think of, for example:

* finding the ROR ID for an organisation based on an affiliation string,
* finding the ORCID ID for a researcher based on the person's name and affiliation,
* finding the ROR ID for a funder based on the acknowledgements section of a research paper,
* finding the grant DOI based on an award number and a funder name.

Matching doesn't have to be done manually. It is possible to develop fully automated strategies for metadata matching and employ them at scale. It is also possible to use a hybrid approach, where automated strategies assist users by providing suggestions.

Developing automated matching strategies is not a trivial task, and if we want to do it right, it takes a great deal of time and effort. This brings us to our next question: is it worth it?

## Why do we need matching?

In short, metadata matching gives us a more complete picture of [the research nexus](https://crossref.org/documentation/research-nexus/) by discovering missing relationships between various entities within and throughout the scholarly record:

{{< figure src="/img/blog/matching101/matching-101-relationships.png" alt="Example relationships in the scholarly record" class="blog-figure" >}}

<br />

These relationships are very powerful. They provide important context for any entity, whether it is a research output, a funder, a research institution, or an author. Imagine for a moment the scholarly record without any such relationships, where all bibliographic references, affiliations (institution names and addresses), and funding information (funder names and grant titles) are provided as unstructured strings only. In such a world, how would you calculate the number of times a particular research paper was cited? How would you get a list of research outputs supported by a specific funder? It would be incredibly challenging to navigate, summarise, and describe research activities, especially considering the scale. Thankfully, these and many other questions can be answered thanks to metadata matching that discovers relationships between entities in the scholarly record.

There are two primary ways we can use metadata matching in our workflows: as semi-automated tools that help users look up the appropriate identifiers or as fully automated processes that enrich the metadata in various scholarly databases.

The first approach is quite similar to the example we described at the beginning. If you are submitting scholarly metadata, for example of a new article to be published, you can use metadata matching to look up identifiers for the various entities and include these identifiers in the submission. For example, with the help of metadata matching, instead of submitting citation strings, you could provide the DOIs for works cited in the paper and instead of the name and address of your organisation, you could provide its ROR ID. To make this easier for people, metadata submission systems and applications sometimes integrate metadata matching tools  into user interfaces.

The second approach allows large, existing sources of scholarly metadata to be enriched with identifiers in a fully automated way. For example, we can match affiliation strings to ROR IDs using a combination of machine learning models and [ROR's default matching service](https://ror.readme.io/docs/api-affiliation), effectively adding more relationships between people and organisations. We can also [compare journal articles and preprints metadata](https://crossref.org/blog/discovering-relationships-between-preprints-and-journal-articles/) in the Crossref database by calculating similarity scores for titles, authors, and years of publication to match them with each other and provide more relationships between preprints and journal articles. This automated enrichment can be done at any point in time, even after research outputs have been formally published.

There are fundamental differences between these two approaches. The first is done under the supervision of a user, and for the second, the matching strategy makes all the decisions autonomously. As a result, the first approach will typically (although not always) result in better quality matches. By contrast, the second approach is much faster, generally less expensive, and scales to even very large data sources.

In the end, no matter what approach is used, the goal is to achieve a more complete accounting of the relationships between entities in the scholarly record.

This blog is the first one in a series about metadata matching. In the coming weeks, we will cover more detail about the product features related to metadata matching, explain why metadata matching is not a trivial problem, and share how we can develop, assess, compare, and choose matching strategies. Stay tuned!

{{% callout color="grey" icon="fa-envelope" %}}

Questions? Contact adam@ror.org.

{{% /callout %}}


