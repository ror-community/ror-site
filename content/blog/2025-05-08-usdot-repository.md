+++ 
title = "ROR in the US Department of Transportation's Research Repository" 
date = "2025-05-08"
draft = false 
tags = ["USDOT", "DataCite"] 
categories = ["Case Studies"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "https://rosap.ntl.bts.gov/sites/default/themes/dot/images/stacks_searchBar_logo1184-481.svg" 
images = ['https://rosap.ntl.bts.gov/sites/default/themes/dot/images/stacks_searchBar_logo1184-481.svg']
authors = ["Peyton Tvrdy", "Amanda French"] 
description = "Peyton Tvrdy of the US National Transportation Library tells us why and how her team did such exemplary work in producing metadata for Rosa P, a national digital repository for open transportation research."
doi = "https://doi.org/10.71938/pfdw-jr49"
+++ 

{{< figure src="https://rosap.ntl.bts.gov/sites/default/themes/dot/images/stacks_searchBar_logo1184-481.svg" class="featured-figure" alt="US Department of Transportation, Rosa P Repository and Open Science Access Portal" >}}

The [ROSA P digital repository](https://rosap.ntl.bts.gov/), operated by the [US National Transportation Library](https://ntl.bts.gov/ntl) -- part of the [US Department of Transportation](https://www.transportation.gov/) -- is one of the [top ten providers of ROR IDs in DOI metadata to DataCite](https://api.datacite.org/dois?query=fundingReferences.funderIdentifierType:ROR&page%5Bsize%5D=0). In this short case study, Peyton Tvrdy tells us why and how her team did such exemplary work in producing metadata for open transportation research funded or produced by USDOT.

This article represents the first in an ongoing series of short [case studies](https://ror.org/categories/case-studies) on ROR users that we're calling "Four for ROR" in which we ask ROR users four questions about why and how they're using ROR.

---

### What made you decide to use ROR?

I was first introduced to ROR IDs Fall 2023 when I started at the National Transportation Library. A coworker of mine, [Leighton Christiansen](https://orcid.org/0000-0002-0543-4268), was introduced to ROR and thought it would be a great idea to create [ROR IDs for the Department of Transportation](https://ror.org/02xfw2e90) and our sub-organizations. That fall, I used the [ROR submission form](https://curation-request.ror.org) to create seven ROR IDs for the library. At this time we were unsure of how we would use them and integrate ROR into our repository. 

While our repository does not have full ROR integration currently, we use ROR to identify our organizations in our [DataCite](https://datacite.org) DOI metadata. I decided to [use the ROR API to match our organizations](https://ror.readme.io/docs/matching#match-organization-names-to-ror-ids-using-the-ror-api) because our cataloging system has many different controlled values of the same organizations. ROR IDs help us to standardize our organization names while still giving proper attribution to organizations in our DataCite DOI metadata. Additionally, because I have a [program](https://github.com/ptvrdy/doi-parser) that uses the DataCite API for DOI updates and maintenance, it was easy to integrate the ROR API for organization matching. Using ROR allows us to better standardize our organizations, fully utilize persistent identifiers, and create better metadata.

{{< figure src="/img/blog/usdot/doi-parser.png" alt="Confirming a match to a ROR ID in the DOI parser program" caption="Confirming a match to a ROR ID in the [DOI parser program](https://github.com/ptvrdy/doi-parser)" >}}


### How do you use ROR?

Currently, the National Transportation Library only uses ROR IDs programmatically for our DOI metadata in my [DOI parser program](https://github.com/ptvrdy/doi-parser). ROR IDs are used for creator organizations, contributing organizations, publishing organizations, and funding organizations. However, ROR IDs are also used in the README files for our datasets in ROSA P. These README files contain important information about datasets, such as funding information, file information, licensing, and the preferred citation. 

{{< figure src="/img/blog/usdot/rosap-dataset-readme.png" alt="ROR IDs being used for organizations in a dataset's README file" caption="ROR IDs being used for organizations in a [dataset’s README file](https://doi.org/10.21949/rb92-6j61)" >}}

### What were the steps you took to integrate ROR into your systems and workflows?

Cross-walking our organization names to ROR names and ROR IDs was a lengthy process, but it has resulted in better quality metadata. My program maintains a CSV of our organization names and their mapping to ROR. This allows my program to seamlessly match our organizations to organizations already matched to ROR. For organizations not in this spreadsheet, it queries the ROR API and has the user confirm or manually add a ROR match if there is one. That user response is then saved to the CSV for future use. This lessens the possibility for mistakes as each ROR ID and organization name are only matched once. This process is done for all organization fields in the [DataCite schema](https://datacite-metadata-schema.readthedocs.io/en/4.5/). Mapping to ROR is especially easy for [funder organizations](https://datacite-metadata-schema.readthedocs.io/en/4.5/properties/fundingreference/#funderidentifier) because all of our repository’s research is funded exclusively by the Department of Transportation, so all of our contract and grant numbers are attributed properly to the Department of Transportation.

{{< figure src="/img/blog/usdot/datacite-json-usdot.png" class="blog-figure" alt="DataCite JSON Metadata of a contract attributed to USDOT with the ROR ID" caption="DataCite JSON Metadata of a contract attributed to USDOT with the ROR ID" >}}

### What else would you like to say about ROR?

ROR as an organization is an amazing resource for organizations looking to standardize and manage their organization names. The staff at ROR and the [community calls](/events) are excellent resources to learn more about integrating organization persistent identifiers into your repository, documentation, or other processes. While matching controlled values to ROR IDs can be time-consuming, it is worth the effort in the pursuit of linked data.

{{< callout icon="fa-envelope" >}} 

Write us at support@ror.org with any comments or questions or if you'd like to contribute to the ROR blog. 

{{< /callout >}} 
