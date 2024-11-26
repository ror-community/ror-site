+++ 
title = "Understanding RRID and ROR for Facilities" 
date = "2024-11-26T14:51:10-05:00"
draft = false 
tags = ["RRID", "Facilities"] 
categories = ["Explainers"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/rrid-ror/iconmonstr-flask-9-240.png" 
images = ['/img/blog/rrid-ror/iconmonstr-flask-9-240.png']
author = "Anita Bandrowski (RRID) and Amanda French (ROR)" 
description = "In the rapidly evolving landscape of academic research, clear identification of entities such as research outputs, people, organizations, and resources is crucial. What about cases where it isn't clear which persistent identifier to use for a given entity? This blog post explores the difference between 'core facilities' in RRID and 'facilities' in ROR and provides guidance for those who run facilities on how to effectively use these identifiers."
aliases = [ "/blog/2024-11-26-rrid-ror-facilities" ]
+++ 

{{< figure src="/img/blog/rrid-ror/iconmonstr-flask-9-240.png" class="featured-figure" alt="Icon Monster flask" >}}


In the rapidly evolving landscape of academic research, clear identification of entities such as research outputs, people, organizations, and resources is crucial. What about cases where it isn't clear which persistent identifier to use for a given entity? This blog post explores the difference between "core facilities" in RRID and "facilities" in ROR and provides guidance for those who run facilities on how to effectively use these identifiers.

## What is RRID and what is its scope? 

RRIDs help identify a wide variety of resources which are **inputs to experiments**, especially biomedical experiments. Examples of resources identified by RRID:

* Antibodies 
* BioSamples
* Cell lines 
* **Core facilities**
* Databases
* Instruments (capital equipment)
* Organisms 
* Plasmids 
* Reagents
* Software

RRIDs started in 2014 as an agreement between 25 journal editors to improve how research resources, especially antibodies, are cited in the scientific literature. The infrastructure has been supported in the FAIR Data Informatics Lab at the University of California at San Diego and SciCrunch Inc, a company devoted to improving scientific literature. RRIDs.org has recently become a stand-alone not-for-profit entity, enabling sustainability. The RRID registry at [scicrunch.org](https://rrid.site/data/source/nlx_144509-1/search) currently includes nearly 25,000 records, including around 3,000 facilities.


## What is ROR and what is its scope?

ROR IDs help identify **research organizations**, defined as "any organization that is involved in research," including organizations that produce, fund, facilitate, manage, and publish research as well as organizations that educate or employ researchers. Examples of research organizations identified by ROR: 

* Archives
* Colleges and universities
* Companies that fund or conduct research
* Government agencies and units that fund or conduct research
* Hospitals and healthcare centers
* Laboratories
* Nonprofits and non-governmental organizations that fund or conduct research
* Private foundations that fund research
* **Research facilities**
* Research institutes
* Research libraries
* Scholarly publishers
* Zoos

[ROR is an initiative](https://ror.org/about) jointly supported and managed by Crossref, DataCite, and the California Digital Library that makes it easy to disambiguate institution names and connect research organizations to researchers and research outputs. ROR was launched in 2019 after three years of consultations with working groups and stakeholders, developed to solve the problem of identifying organizations in an open and community-driven way. The [ROR registry](https://ror.org/search) currently includes nearly 110,000 active records and is currently [widely adopted by many essential scholarly systems](https://bit.ly/ror-integrations). 


## Definitions of Facilities for RRID and ROR 

As you can see above, RRID includes a resource type for "core facilities," and ROR [includes an organization type "facility."](https://ror.readme.io/v2/docs/data-structure#types) Despite this apparent similarity, the definitions for "core facilities" in RRID and "facilities" in ROR differ quite a bit, and indeed there is very little overlap between  core facilities in RRID and facilities in ROR. Let’s look now at how RRID and ROR define "core facility" and “facility” and at some examples of each.

### What are “core facilities” in RRID?

Core facilities are centralized resources within universities that offer access to instruments, technologies, and expert services. These semi-autonomous units are essential for scientific and clinical investigators, enabling them to conduct cutting-edge research without the need for individual investment in expensive equipment or staff. 

Core facilities have joined forces and created a society called the [Association of Biomolecular Resource Facilities (ABRF)](https://abrf.org/), which began as a society for US biomedical facilities but now encompasses international facilities from many disciplines. The [ABRF Core Marketplace](https://coremarketplace.org/) is the listing of member Core Facilities that is primarily used to advertise Core services. One issue that has come up for Cores is the lack of proper citation of the facilities and the tremendous waste of time that searching the literature takes from each Core. 

The ABRF Core Marketplace joined the RRID initiative as a partner and now lists RRIDs on each active Core listing, gathering data about Core usage from the RRID efforts, search of the PubMedCentral database as well as the Core directors. “RRIDs allow our cores to be uniquely identified and many of our members push their users to use RRIDs to cite / acknowledge their facilities” explains Nate Herzog, the Core Marketplace director. As of this writing, the ABRF Core Marketplace maintains 1597 active facility profiles, 576 of which have been cited by RRID. 

Some active core facilities with RRIDs include the following: 

* New York University School of Medicine Langone Health Microscopy Laboratory Core Facility ([RRID:SCR_017934](https://rrid.site/data/record/nlx_144509-1/SCR_017934/resolver/mentions?q=*&i=rrid:scr_017934))
* Salk Institute Razavi Newman Integrative Genomics and Bioinformatics Core Facility (IGC) ([RRID:SCR_014842](https://rrid.site/data/record/nlx_144509-1/SCR_014842/resolver/mentions?q=*&i=rrid:scr_014842))
* Stanford University Vincent Coates Foundation Mass Spectrometry Laboratory Core Facility ([RRID:SCR_017801](https://rrid.site/data/record/nlx_144509-1/SCR_017801/resolver/mentions?q=*&i=rrid:scr_017801))

These core facilities with RRIDs do not have corresponding ROR IDs, but the parent organizations do: 

* New York University - [https://ror.org/0190ak572](https://ror.org/0190ak572) 
* Salk Institute for Biological Studies - [https://ror.org/03xez1567](https://ror.org/03xez1567) 
* Stanford University - [https://ror.org/00f54p054](https://ror.org/00f54p054)


### What are “facilities” in ROR?

ROR’s list of organization types includes a value for “facility,” [defined as](https://ror.readme.io/v2/docs/data-structure#types) “A specialized facility where research takes place, such as a laboratory or telescope or dedicated research area.” There are currently [over 11,000 organizations of the type “facility”](https://api.ror.org/v2/organizations?query.advanced=types:facility) in ROR. 

Facilities in ROR include the following: 

* The Square Kilometre Array Telescope, Australia - [https://ror.org/00ydnew86](https://ror.org/00ydnew86)
* Medical Research Council (MRC) Prion Unit, University College London - [https://ror.org/043j90n04](https://ror.org/043j90n04)
* Stanford Linear Accelerator Center (SLAC) National Accelerator Laboratory - [https://ror.org/05gzmn429](https://ror.org/05gzmn429) 

These facilities in ROR do not have corresponding RRIDs, reflecting the broader nature of the definition of “facility” in ROR as well as ROR’s history of comprehensive coverage of non-US and non-biomedical organizations. Facilities in ROR are usually organizations like national laboratories that may be loosely associated with a university but are not dependent on it.

### What are the main differences between "core facilities" in RRID and "facilities" in ROR? 

RRID identifies core facilities because they can be considered as "inputs to experiments," especially when the main contribution of the core facility is to provide researchers with access to particular instruments. University-based core facilities are typically funded by individual grants, and in many cases those are instrument-related grants intended to bring a capability to a certain university. These are typically large instruments that are made available to multiple individual laboratories in the department or university. The success of the core facility depends on the usage of the core resources, the publication of scientific work based on the data produced at the core facility, and on the successful interactions between core facility staff and local investigators. Because these facilities are grant-driven, an accounting of impact typically centers on **counting papers that core facilities / instruments have been acknowledged in**. RRIDs help core facilities better identify the manuscripts that need to be accounted for as they measure their impact.

In the majority of cases, these core facilities are not in scope for ROR because they are subsections or service offerings at a university instead of being functionally separate organizations in the way that hospitals, national laboratories, or large research institutes are. Core facilities offer researchers access to resources such as large instruments, and the researchers who use the core facility often acknowledge this contribution in their published research outputs, as explained above, but the researchers do not give the core facility as an affiliation when they publish datasets and/or journal articles. One of the primary uses of ROR is to **help organizations track research outputs by contributor affiliation**. 

This difference can be seen by looking at a sample article [published in 2022 in the journal *Leukemia* by Baeten et al.](https://doi.org/10.1038/s41375-021-01491-z) The authors are affiliated with research organizations that can be identified by ROR IDs, including The University of Chicago Medicine Comprehensive Cancer Center ([https://ror.org/042wftp98](https://ror.org/042wftp98)).  

{{< figure src="/img/blog/rrid-ror/ror-affiliations.png" class="blog-figure" alt="Author affiliations of researchers for the article https://doi.org/10.1038/s41375-021-01491-z, best tracked with ROR" caption="Author affiliations of researchers for the article [https://doi.org/10.1038/s41375-021-01491-z](https://doi.org/10.1038/s41375-021-01491-z), best tracked with ROR">}}

In the same paper, the authors also acknowledge support from the DNA Sequencing and Genotyping Facility Core, also known as the [University of Chicago Functional Genomics Core Facility, identified by RRID:SCR_019196](https://rrid.site/data/record/nlx_144509-1/SCR_019196/resolver/mentions?q=*&i=RRID:SCR_019196). 


{{< figure src="/img/blog/rrid-ror/rrid-acknowledgments.png" class="blog-figure" alt="Acknowledgements of support from core facilities in the article https://doi.org/10.1038/s41375-021-01491-z, best tracked with RRID" caption="Author affiliations of researchers for the article [https://doi.org/10.1038/s41375-021-01491-z](https://doi.org/10.1038/s41375-021-01491-z), best tracked with ROR">}}

In short, then, RRIDs help track **core facility acknowledgements while ROR IDs help track contributor affiliations**. 

Let's look now at how to use RRID and ROR. 

## How to use RRID and ROR 

### How to use RRIDs 

RRIDs are usually added to the main text of the manuscript; they are present in materials or resource tables ([STAR Table example](https://www.sciencedirect.com/science/article/pii/S2211124724012166#sec8)), in the methods section text ([see example](https://www.frontiersin.org/journals/cellular-neuroscience/articles/10.3389/fncel.2021.632354/full#h3)), or in the acknowledgement section ([many core facilities are cited this way](https://pmc.ncbi.nlm.nih.gov/articles/PMC10600361/#s1)). This enables the core owner, and any robot (or undergraduate student) to easily extract the fact that this manuscript is associated with this resource or core facility. Being part of the [JATS standard](https://jats.nlm.nih.gov/archiving/tag-library/1.2d2/element/resource-id.html) means that publishers will pull these identifiers into article metadata for you, at some point, but we are not holding our breath until that happens. Based on the hard work of robots and undergraduate students, RRID pages on both the RRID and Core Marketplace sides list the papers associated with each Core Facility, owners of facilities can also help to fill out this data, for example [https://n2t.net/RRID:SCR_019195](https://n2t.net/RRID:SCR_019195)


{{< figure src="/img/blog/rrid-ror/ualberta-core.png" class="blog-figure" alt="Using RRIDs to track papers associated with the University of Alberta Faculty of Medicine and Dentistry Flow Cytometry Core Facility (RRID:SCR_019195)" caption="Using RRIDs to track papers associated with the University of Alberta Faculty of Medicine and Dentistry Flow Cytometry Core Facility (RRID:SCR_019195)">}}



ORCID records also [accept RRIDs](https://info.orcid.org/documentation/workflows/research-resources-workflow/), enabling data to be harvested from or sent to an individual researcher’s ORCID profile, which means that analysts can examine ORCID data for RRIDs. [RRIDs are proposed for inclusion in the next DataCite metadata schema](https://datacite.org/blog/metadata-schema-rfc-march_2024/), which means that one day analysts will also be able to look for RRIDs in DataCite data. 


### How to use ROR 

ROR is “infrastructure for infrastructure,” meaning that ROR is meant to be directly incorporated into software applications or added to scholarly metadata by information professionals rather than being used by individual researchers or by facility administrators. ROR offers both a [REST API](https://ror.readme.io/v2/docs/rest-api) and a [downloadable dataset](https://ror.readme.io/v2/docs/data-dump) for use by developers in their applications, and those who register DOIs with [Crossref](https://ror.readme.io/v2/docs/crossref) or [DataCite](https://ror.readme.io/v2/docs/datacite) can also include ROR IDs in DOI metadata. Typically, a ROR-enabled system will [build a ROR-powered lookup into forms](https://ror.readme.io/v2/docs/forms) so that a user can simply search for the name of their organization and select it without ever seeing or using the ROR ID. Research outputs such as journal articles and datasets can then be tracked by all kinds of different ROR-enabled systems, including OpenAlex, the Web of Science, Crossref, and DataCite Commons. 



{{< figure src="/img/blog/rrid-ror/ror-datacite-maglab.png" class="blog-figure" alt="DataCite Commons uses the ROR ID to enable tracking of datasets associated with the National High Magnetic Field Laboratory https://ror.org/03s53g630." caption="[DataCite Commons](https://commons.datacite.org/ror.org/03s53g630) uses the ROR ID to enable tracking of datasets associated with the National High Magnetic Field Laboratory ([https://ror.org/03s53g630](https://ror.org/03s53g630)).">}}


ROR is the preferred organization identifier for contributor affiliations in ORCID, DataCite, and Crossref and is used in DOI metadata for many item types, including journal articles, datasets, projects, instruments, software, data management plans, and grants.


## Recommendations for Facilities

**If you are managing a facility, it’s important to adopt a strategy that incorporates either a ROR ID, an RRID, or both**. Here are our recommendations. 



1. **University-based core facilities: Obtain an RRID.** RRIDs will enhance the visibility of your research and allow for proper attribution in research outputs. To request an RRID simply go to the [RRID website](https://rrid.site/about/resource) and fill out a form (3 fields are required for the initial step). You will direct the curator to look at your core facility webpages and we will in turn ask you to also register with CoreMarketplace (one click option is coming soon!). Curation will provide a set of instructions for how to use your RRID and we will start tracking papers citing your core as soon as the record is approved. 
2. **Other facilities: Obtain a ROR ID.** If your facility has multiple parent organizations or is frequently used as an affiliation to identify research outputs (e.g., in contributor affiliations or dataset attributions) without reference to its parent organizations, first [check to see if your facility is already in ROR](https://ror.org/search), and if not, [request a ROR ID](https://curation-request.ror.org). A ROR ID enables disambiguation from your parent organization(s) while preserving the connection, allowing for proper attribution and impact tracking.
3. **Educate researchers about RRID**: Inform researchers about the importance of using RRIDs and encourage them to include RRIDs in their publications for accurate representation of the resources used. Your acceptance letter will include the pointers from a survey from cores that implemented RRIDs successfully. 
4. **Choose systems that use ROR**: Check to see if the [tools and platforms](https://bit.ly/ror-integrations) used within your facility to manage and track your activities use ROR, and if not, ask the provider to integrate ROR (see more in the [FAIR Facilities Report](https://doi.org/10.5065/zgsx-2d06)). 


## Conclusion

The use of persistent identifier systems like RRID and ROR is essential for the effective management and recognition of research facilities. Implementing these identifiers will not only streamline operations but also foster collaboration and transparency in research. Using these identifiers can help facilities of various kinds enhance their visibility, track their impact more effectively, and contribute to the larger academic community. 

{{% callout color="green" icon="fa-envelope" %}}

Questions? Contact [support@ror.org](mailto:support@ror.org).

{{% /callout %}}