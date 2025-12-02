+++ 
title = "Announcing Single Search Affiliation Matching for the ROR API" 
date = "2025-12-02T09:27:10-05:00"
draft = false 
tags = ["Matching", "API"] 
categories = ["Technical News"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.jpg" 
thumb = "/img/bibake-uppal-83uG2S0aT_I-unsplash.jpg" 
images = ['/img/bibake-uppal-83uG2S0aT_I-unsplash.jpg']
authors = ["Amanda French", "Adam Buttrick"] 
description = "We are delighted to announce the launch of a new matching strategy in the ROR API to help you match complex affiliation text strings to ROR IDs at scale."
doi = "https://doi.org/10.71938/zz90-g810"
crosspost = ""
+++ 

<!-- Commonly used content 

{{< figure src="/img/blog/" class="featured-figure" alt="" >}}

{{< callout color="green" icon="fa-info" >}} 
{{< /callout >}}

{{< figure src="/img/blog/" class="blog-figure" alt="" >}}

{{< youtube id="XXX" title="" >}}

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 
-->

{{< figure src="/img/bibake-uppal-83uG2S0aT_I-unsplash.jpg" class="featured-figure" alt="Leopard standing on tree branch. Photo by Bibake Uppal on Unsplash." >}}


We are delighted to announce the launch of a new matching strategy in the ROR API to help you match complex affiliation text strings to ROR IDs at scale. 

Publishing and repository systems have traditionally stored author and affiliation information as unstructured data, capturing complex organizational details as a text string in a single field. This unstructured information makes it difficult to reliably connect research outputs and the affiliated institutions. 

As a result, many systems, including large-scale scholarly knowledge graphs such as [OpenAlex](https://openalex.org) and [The Lens](https://lens.org), use various methods to match these unstructured affiliation strings to ROR IDs. It is therefore a priority for ROR to develop robust methods to enable ROR API users to match these messy affiliation strings to ROR IDs for the general improvement of scholarly metadata throughout the research ecosystem.


## How we developed the single search strategy 

ROR's first affiliation matching strategy, developed by Crossref’s Director of Technology, [Dominika Tkaczyk](https://www.crossref.org/people/dominika-tkaczyk/), was [announced in 2019](https://doi.org/10.71938/36jw-rs79). It has been available on the ROR API ever since. This strategy works by breaking long affiliation strings into substrings and making multiple queries against the ROR registry. If a match is found, the ROR API returns the ROR record identified with a `chosen:true` indicator. 

Beginning in 2023, the ROR team began collaborating with Crossref again to develop a new matching strategy that would be both faster and more precise at scale. Throughout 2024, the principles behind this collaborative research were explained in a popular [series of blog posts about matching on the ROR blog](https://ror.org/tags/matching/) co-written by ROR Product Manager [Adam Buttrick](https://ror.org/authors/adam-buttrick) and Dominika Tkaczyk. Early in 2025, we [reported](https://doi.org/10.71938/mtx2-vb16) that this collaboration between ROR and Crossref had produced a new, faster, more precise strategy for matching affiliation strings to ROR IDs. Unlike the original "multisearch" matching strategy, the new strategy performs a single search of the ROR registry to find the most likely match, and therefore we've dubbed it "single search."

OpenAlex quickly incorporated this new strategy into [its own affiliation matching](https://ror.org/blog/2023-09-13-openalex-case-study/), and Crossref used it to produce a [dataset](https://doi.org/10.5281/zenodo.15254992) of 95 million affiliation strings from its metadata matched to ROR IDs. At ROR, we then began the work to include this strategy in our own API, which was recently completed and released last month. Like all of ROR’s code and data, [the single search strategy](https://gitlab.com/crossref/marple/-/tree/main/strategies_available/affiliation_single_search) is freely and openly available.


## Benefits of the single search strategy

In a demonstration of the single search strategy given at the [November 2025 ROR Community Call](https://ror.org/events/2025-11-19-ror-community-call/), Adam Buttrick explains that the new strategy has been designed to reduce the rate of false positive matches, because we know that accuracy is of primary importance for unsupervised automated matching. The single search strategy is more computationally efficient, better able to find relevant results, and more accurate than the already high-performing multisearch strategy. 

In just one of several examples drawn from real Crossref metadata, Adam shows in the below video that a string such as "Department of Cognitive Sciences, School of Social Sciences, University of California, Irvine, California;" is not matched by the current multisearch affiliation strategy on the ROR API but is correctly matched by the new single search strategy to the ROR ID for the University of California, Irvine: [https://ror.org/04gyf1771](https://ror.org/04gyf1771). 

{{< youtube id="DC7mZSnECsQ" title=" ROR single search affiliation matching strategy demo Nov 2025" >}}


## Using the single search strategy 

To try out the new single search matching strategy, append the term `&single_search` to a ROR API `?affiliation` query as described in our [updated documentation](https://ror.readme.io/docs/api-affiliation#/single-search-strategy). 

Note that the single search strategy is currently in a preview period, so the existing [multisearch matching strategy](https://ror.readme.io/docs/api-affiliation#/multisearch-strategy) is still the default for `?affiliation` queries. Both matching strategies will remain available in the ROR API for the foreseeable future, but we plan to make the single search strategy the default strategy used for `?affiliation` queries in the first quarter of 2026.  

To give us feedback, you can open an [issue on our roadmap](https://ror.readme.io/docs/api-affiliation#/multisearch-strategy) or contact us at [support@ror.org](mailto:support@ror.org). Please note that any individual string might be less well matched using the new strategy than using the existing strategy, so we are most interested in tests that use sizable open datasets.

Both ROR and Crossref work every day to improve metadata throughout the scholarly information ecosystem so that reliable connections can be made between organizations and the research they support. Clean, normalized, structured, open organization information helps ensure research integrity and enables tracking and analysis of research. Our hope is that by constantly improving ROR's systems and services we can improve scholarly metadata for everyone. 

{{< callout icon="fa-envelope" >}} 

Questions? Comments? Contact [support@ror.org](mailto:support@ror.org). 

{{< /callout >}} 
