+++ 
title = "Europe PMC Announces ROR Integration into Grant Finder" 
date = "2023-03-28" 
draft = false 
tags = ["Adoption", "Integrations", "Community", "Funders", "EuropePMC"] 
categories = ["Adoption News"] 
archives = ["2023"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.jpg"
thumb = "/img/blog/europepmc/Europe-PMC-basic-logo.png" 
images = ['/img/blog/europepmc/Europe-PMC-Extended-Logo.png']
authors = ["Amanda French"] 
description = "Europe PMC, one of the largest providers of high-performance search tools for life sciences literature, has announced that its Grant Finder now incorporates Research Organization Registry (ROR) IDs to help users find active and completed grants awarded by Europe PMC funders."
doi = "https://doi.org/10.71938/vwkf-7493"
+++ 

[Europe PMC](https://europepmc.org/), one of the largest providers of high-performance search tools for life sciences literature, has [announced](http://blog.europepmc.org/2023/03/improved-affiliation-search-for-grants.html) that its Grant Finder now incorporates Research Organization Registry (ROR) IDs to help users find active and completed grants awarded by Europe PMC funders.

Europe PMC provides comprehensive access to life sciences literature from trusted sources. It's available to anyone, anywhere for free. Users of Europe PMC can search and read 42 million publications, preprints and other documents enriched with links to supporting data, reviews, protocols, and other relevant resources. Europe PMC partners with other organisations to build robust public tools to provide access to open content and data and to advance life sciences research. 

Integrating ROR IDs into the Europe PMC Grant Finder means that organizational name variations are now aggregated under a single name, which allows people to search for different aliases and receive the same set of results. Europe PMC used the ROR API in conjunction with a manual screening step to match 82% of associated institutions in the Europe PMC grants database (GRIST) to over 2600 ROR IDs. ROR IDs are now returned as part of the GRIST API core response along with the institution name. The ROR ID is also used to auto-suggest a matching affiliation when a user searches for grants awarded to a particular institution by typing a name in the "Affiliation" field of the Grant Finder. This integration is now live at http://europepmc.org/grantfinder.

### {{< figure src="/img/blog/europepmc/europe-pmc-grant-finder-ror.png" alt="ROR-powered affiliation chooser in Europe PMC Grant Finder" >}} 

Europe PMC has supported ROR IDs for author affiliations since 2019, and in 2021 ROR IDs were added to a subset of publications by EMBL-affiliated authors as part of [Project FREYA](https://www.project-freya.eu/Plone/en). Additional work for Project FREYA included the development of the [ROR Predictor prototype](https://gitlab.ebi.ac.uk/literature-services/public-projects/ROR-proto-EMBL), which enables matching author affiliations in research outputs with PMIDs to ROR IDs. Europe PMC also uses ROR IDs to enrich the DOI metadata of the [research grants it registers with Crossref](https://www.crossref.org/community/grants/) on behalf of the Wellcome Trust. 

“Linking research outputs via persistent identifiers makes related information more findable and helps track provenance. Incorporating ROR IDs for grant awards supports DORA-compatible research reporting for funders and institutions who need to understand the impact of research,” said Melissa Harrison, Team Leader of Literature Services at EMBL-EBI.

Said ROR Project Lead Maria Gould of the California Digital Library, "Europe PMC has been remarkably forward-looking in its early use of ROR, and we are excited to see other services follow their example."

See also the Crossref news release, "[Europe PMC integrates ROR into its Grant Finder](https://www.eurekalert.org/news-releases/984137)." 


{{< callout color="green" icon="no-icon" >}} 

- [Contact helpdesk@europepmc.org](helpdesk@europepmc.org) for further information about Europe PMC's use of ROR.
- [Contact Amanda French](mailto:community@ror.org), ROR Technical Community Manager, for more information about ROR.
- Register for an upcoming [ROR Community Call or other event](/events) to hear about integrations like these and more.

{{< /callout >}} 
