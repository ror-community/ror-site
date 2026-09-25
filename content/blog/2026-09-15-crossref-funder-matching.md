+++ 
title = "Improving How Funding Connects to Research Outputs" 
date = "2026-09-15T12:20:31-04:00"
draft = false 
tags = ["Crossref", "Funders", "Matching", "Cross-post"] 
categories = ["Adoption News"] 
archives = ["2026"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.jpg" 
thumb = "/img/crossref-social.png" 
images = ['/img/crossref-social.png']
authors = ["Martyn Rittman", "Rocio Gaudioso Pedraza", "Carlos del Ojo Elias", "Jason Portenoy", "Dominika Tkaczyk"] 
description = "Starting today, funder names deposited in Crossref metadata without an identifier will be matched to ROR IDs, to support an open and connected Research Nexus."
doi = "https://doi.org/10.71938/vwjc-1725"
crosspost = "https://doi.org/10.64000/rg83r-2ft15"
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

{{< callout icon="no-icon" color="green" >}} 
Today, Crossref begins enhancing metadata records by matching funder names without identifiers to ROR IDs, marking an important step forward in the use of ROR as a funder identifier. Read the full text of the Crossref announcement below.

{{< /callout >}} 

Starting today, funder names deposited in Crossref metadata without an identifier will be matched to ROR IDs, to support an open and connected [Research Nexus](https://crossref.org/documentation/research-nexus/). Funding information is an increasingly important part of the scholarly record. The improved matching strategy supports researchers, funders, institutions, and meta-researchers, who rely on that information to understand how research is supported and what outcomes that support produces.

We start matching funder names in research outputs to ROR IDs, while we also implement our improved matching strategy. Previously deposited metadata records will remain unchanged. Identifiers from the Open Funder Registry will remain in metadata records and will not be replaced by ROR IDs. 

Member-deposited metadata in Crossref is [enriched in a number of ways](https://doi.org/10.64000/h6w1v-r1017) that give useful context to the community. Earlier this year, we shared that we will be initiating a number of [matching tasks](https://crossref.org/community/special-programs/metadata-matching/) to highlight relationships between works, individuals, institutions, and actions. Subsequently, we shared our [strategy for matching funders](https://doi.org/10.64000/d3f5t-g5017) to [Research Organization Registry](https://ror.org/) (ROR) IDs, which is far more precise than the one we're replacing. 

{{< callout color="grey" icon="no-icon">}}
"With this approach, we will be designing an open and transparent system, enabling greater control over the matching logic that can continue to evolve alongside community needs."

--  Dominika Tkaczyk, Director of Technology at Crossref
{{< /callout >}}

Following extensive testing and evaluation, the new funder matching strategy is ready, and has been shown to achieve 99% precision. Starting today, every new or updated record containing funding information without a funder identifier will go through the updated matching process. Any matched ROR IDs will become part of the enriched metadata, freely available through our [REST API](https://crossref.org/documentation/retrieve-metadata/rest-api/). Matching to ROR identifiers means that we are continuing our commitment to using and supporting open, community-governed infrastructure. 

Improved funder matching creates stronger links between funding and research outcomes, helping build a more complete picture of how research is supported and connected in the [Research Nexus](https://crossref.org/documentation/research-nexus/). As we argue in our recent position paper on [PIDs in research infrastructure policy](https://doi.org/10.13003/q4vu-l2mw), the value of a Crossref DOI comes from the rich, open metadata, relationships, services and stewardship built on top of it. Funder matching puts that principle into practice: adding a ROR ID creates a more reliable connection between research outputs and the organisations that fund them.

## What does this mean?

Funder names deposited without an identifier will be matched to ROR IDs, where a match is found. During our [mid-year community call](https://doi.org/10.64000/ns8n5-9kq46) held on 13 May 2026, we demonstrated how we would match funder IDs to ROR IDs. Crossref Director of Technology, Dominika Tkaczyk, [demonstrated four cases of funder matching](https://youtu.be/be-mNrnw3gk?t=2905&si=NvEcyUP0OIiQjDVZ)—from straightforward to more complex matching scenarios, with increasing discrepancies between the input and the name variant in the ROR registry. While our strategy successfully resolved these discrepancies, it also doesn’t overmatch and won’t return a result for a generic name, such as “Faculty of Arts and Social Sciences”. 

## Watch the demo

{{< youtube id="be-mNrnw3gk" start="2905" class="blog-video">}}

No matching outcome is perfect, as you may have read in our [evaluation process](https://doi.org/10.13003/ief7aibi). The new method builds in a way to remove or replace incorrect matches, which is a feature that has been missing from our previous matching implementation.


## Why open funding metadata matters

As the research ecosystem continues to embrace the principles of Open Science, it is important that the metadata associated with research funding is openly available. It increases the transparency of funding sources, supporting compliance with their funder requirements and research integrity. For funders, identifying the outcomes of funded research helps track the impact of their grants. 

This work also reflects our commitment to the [Barcelona Declaration on Open Research Information](https://barcelona-declaration.org/), which calls for open research information to support transparency, accountability, and reuse. Funder matching addresses at least one of the barriers to improving the quality and flow of funding metadata as reflected in a [recently published action plan](https://doi.org/10.5281/zenodo.20190155). 

## One matching project down, more to go

Funder matching is one of a series of projects in our metadata enrichment journey. As we continue developing methods to match metadata, each enhancement will help to strengthen the connections that underpin the research nexus. Next up we will be matching grant numbers and funder identifiers to grant DOIs registered with Crossref.

## Questions you might have

<strong>Will my existing record change?</strong>

No. Existing records remain unchanged unless you update them.</p>

<strong>What if Crossref makes an incorrect match?</strong>

Let us know, we’ll investigate and improve the matching.

<strong>Can I already deposit ROR IDs?</strong>

Yes.

<strong>What if my funder doesn’t have a ROR ID?</strong>

If no corresponding ROR ID exists, no ROR ID will be added.

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}}