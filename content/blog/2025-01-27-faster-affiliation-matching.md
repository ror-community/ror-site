+++ 
title = "Faster Affiliation Matching at Scale" 
date = "2025-01-27T09:14:38-05:00"
draft = false 
tags = ["Matching", "OpenAlex", "Crossref", "API"] 
categories = ["Adoption News"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/lion-closeup-1200.jpg" 
images = ['/img/lion-closeup-1200.jpg']
authors = ["Adam Buttrick"] 
description = "OpenAlex has added a new metadata matching strategy co-developed by ROR and Crossref to its affiliation matching processes: ROR is also investigating the prospect of incorporating this new matching strategy into the ROR API in 2025."
doi = "https://doi.org/10.71938/mtx2-vb16"
+++ 

{{< figure src="/img/lion-closeup-1200.jpg" alt="Closeup of male lion with mane" class="featured-figure" >}} 

OpenAlex has added a new metadata matching strategy co-developed by ROR and Crossref to its affiliation matching processes: ROR is also investigating the prospect of incorporating this new matching strategy into the ROR API in 2025. 

---

If you’ve been reading our [recent series of blog posts about metadata matching](/tags/matching/), you know that automatic metadata matching at scale is a topic dear to our hearts. Research metadata is full of unstructured and wildly variant text strings describing organizations, which makes connecting research outputs to research organizations unnecessarily difficult. Universities find it difficult to track what their affiliated researchers have produced; publishers find it difficult to associate author affiliations with subscribing institutions; and funders struggle to accurately track and assess the impact of their investments. Metadata matching can help alleviate these problems.

ROR and Crossref have been collaborating on extensive research into developing and evaluating new metadata matching strategies that have the potential to improve organization metadata throughout the scholarly communication ecosystem. One of the most promising of these new metadata matching strategies is one we refer to internally as “single search,” now being used by OpenAlex.  


## What is “single search”?

[Single search](https://gitlab.com/crossref/labs/marple/-/tree/main/strategies_available/affiliation_single_search) is a new affiliation matching strategy developed in collaboration between ROR and the Data Science team at [Crossref](https://crossref.org) (which is currently [hiring](https://www.crossref.org/jobs/2025-01-16-data-scientist)!). Whereas ROR’s [existing affiliation matching](https://ror.readme.io/v2/docs/api-affiliation) makes use of multiple queries to a search index to return its results, the single search strategy is able to achieve approximately the same performance with just one query to said index. This allows the strategy to return matching results in a fraction of the time as the existing ROR affiliation matching while also using far fewer computing resources. The single search strategy is therefore particularly well suited for matching ROR IDs to affiliation strings in large datasets.

## Partnering with OpenAlex

This past fall, we spoke with OpenAlex about our work on new strategies for affiliation matching, which resulted in a project to supplement their existing [classification-based affiliation matching](https://github.com/ourresearch/openalex-institution-parsing) with the single search strategy. After testing against OpenAlex's benchmark datasets resulted in the same high performance as our internal evaluations, OpenAlex was able to move forward with a full-scale implementation of this strategy across their entire dataset.

This implementation yielded impressive results: matching against the 140 million affiliation strings in OpenAlex created affiliations for 7,700 unique institutions, generating new affiliations for 1.2 million strings. This translated to new affiliations for 2.2 million works and added 4.5 million new author affiliations. The number of ROR IDs represented in OpenAlex also increased significantly, from 93,000 to 100,600, or approximately 90% of the active records in ROR.


## Next steps

ROR is currently looking into how to bring the single search strategy to the ROR API in 2025, and Crossref will publish a dataset of all unique affiliation strings in the Crossref database matched to ROR IDs using the single search method, as well as a set of relationships between works, contributors, and organisations discovered through affiliation matching. 

Our special thanks to OpenAlex’s Jason Priem and Justin Barrett for this collaboration. Stay tuned to all of our [various communication channels](/community/#get-involved) and [events](/events) for future updates on our work on metadata matching!
