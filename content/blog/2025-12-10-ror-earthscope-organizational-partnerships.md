+++ 
title = "How ROR IDs Help the EarthScope Consortium Track Organizational Partnerships" 
date = "2025-12-10T10:01:48-05:00"
draft = false 
tags = ["Metadata Game Changers", "EarthScope Consortium", "DataCite"] 
categories = ["Case Studies"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.jpg" 
thumb = "/img/blog/earthscope/partnerships-chart.png" 
images = ['/img/blog/earthscope/partnerships-chart.png']
authors = ["Ted Habermann", "Jim Riley"] 
description = "Learn how ROR IDs can help track organizational partnerships in this deep dive into work that Metadata Game Changers did with the EarthScope Consortium to add identifiers to DataCite DOI metadata for geophysical datasets."
doi = ""
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

{{< figure src="/img/blog/earthscope/partnerships-chart.png" class="featured-figure" alt="Chart showing partnerships between the EarthScope Consortium and other organizations as reflected in DataCite Commons." >}}


In the past few years, a great deal of attention has been paid to the importance of using ROR IDs to identify organizations that researchers are affiliated with. Less well-known, but equally important, is that organizations can also act as creators or contributors themselves, and these organizational creators and contributors can also be identified with ROR IDs, which is particularly useful for tracking organizational partnerships. 


## Organizational Partners

DataCite now has over 1,600 members and, as the membership expands, different types of organizations join the DataCite community. Some of these new members are organizations with important partnerships with other organizations. The DataCite schema includes the capability to define [a type for creators and contributors](https://datacite-metadata-schema.readthedocs.io/en/4.5/properties/creator/#a-nametype) which can be Personal (default) or Organizational. How are current DataCite members using ROR IDs to identify and track partnerships with other organizations?

The [EarthScope Consortium](https://www.earthscope.org/) operates major scientific facilities focused on Geophysical Sciences, primarily Geodesy and Seismology. These organizations existed independently as UNAVCO, which operated the NSF GAGE facility,  and Incorporated Research Institutes for Seismology (IRIS), which operated the NSF SAGE facility. As of October 2025, these entities merged into the [National Geophysical Facility](https://www.earthscope.org/news/earthscope-consortium-awarded-national-geophysical-facility/) with funding from the U.S. National Science Foundation. Since 2016, these facilities have used DataCite DOIs to identify datasets, and they manage significant repositories. The legacy names of these repositories in DataCite metadata are `iris.iris` (for the NSF SAGE facility operated by IRIS) and `unavco.unavco` (for the NSF GAGE facility operated by UNAVCO).

EarthScope worked with Metadata Game Changers to increase utilization of identifiers in both repositories during 2025 ([Habermann and Riley, 2025](https://doi.org/10.5281/ZENODO.17238701)). Over 450,000 identifiers were added to several fields in the EarthScope repository during this project. It turned out that 97% of the creators in the NSF SAGE repository were organizations, so it provided an opportunity to explore how ROR IDs can be used to track organizational partnerships.

Table 1 shows the organizations that are included as authors in the IRIS repository and the number of times they occur. Together, these organizations account for over 95% of the datasets in this repository. "IRIS DMC" and "Incorporated Research Institutions for Seismology" are two legacy names for the same host facility used in the metadata, as indicated by the ROR ID. The others include universities and government agencies that produce specialized geophysical datasets. 


**Organization**|**ROR**|**# Occurrences**
:-----:|:-----:|:-----:
Global CMT Project|https://ror.org/04knth696*|72,644
IRIS DMC|https://ror.org/05xkn9s74 |13,518
Princeton [University]|https://ror.org/00hx57361|9,019
Northwestern University|https://ror.org/000e0be47 |6,306
Oregon State University|https://ror.org/00ysfqy60|2,442
Geological Survey of Canada|https://ror.org/03wm7z656 |2,121
U.S. Geological Survey|https://ror.org/035a68863|2,061
Complete MT Solutions| |1,929
Incorporated Research Institutions For Seismology|https://ror.org/05xkn9s74 |1,890 
**Total**| |**111,930**

<p style="font-size:.8em;font-style:italic;">
Table 1. Number of occurrences of organizational authors that occurred more than 1,000 times in the iris.iris repository. *New ROR assigned as part of this project.</p>


For example, the [Global CMT Project](https://www.globalcmt.org/) calculates Centroid Moment Tensors that give key source parameters like magnitudes, fault orientations, and locations for earthquakes all over the world while [Global ShakeMovies](https://global.shakemovie.princeton.edu/) generated by Princeton University and given DataCite DOIs are used to visualize ground motion as seismic waves travel around the world.


{{< figure src="/img/blog/earthscope/myanmar-shakemovie.gif" class="blog-figure" caption="Part of a Global ShakeMovie for an earthquake in Myanmar, [https://doi.org/10.17611/dp/23119472](https://doi.org/10.17611/dp/23119472)" >}}


All but one of the organizations listed in Table 1 had ROR IDs when we started this project, and these were added to the DataCite metadata as creator identifiers. The Global CMT Project became a community facility during 2020 and a ROR ID was created for the facility during this project, making it possible to add an identifier to over 72,000 datasets created by The CMT Project.


{{< callout icon="no-icon" >}} 


### Defensive metadata tip for organizations

Most ROR IDs in DataCite are currently used to identify creator or contributor affiliations, so many searches for ROR IDs query either the creators.affiliation.affiliationIdentifier field or the contributors.affiliation.affiliationIdentifier field. In the organizational creator case, the ROR ID fits in the `creators.nameIdentifiers.nameIdentifier` field because it is the identifier for the creator. However, also including the ROR ID as an affiliation identifier ensures that the resource will be discovered regardless of how the search is done. 

{{< /callout >}}


The DataCite Commons is a great tool for browsing resources associated with organizations using their ROR IDs. The organization home page for [EarthScope on DataCite Commons](https://commons.datacite.org/ror.org/04danrt76) shows over 124,000 works for this organization (Figure 1, left).

The creators and contributors list shows only creators with ORCID iDs, i.e., people, but the works associated with the organizations in Table 1 can be found using the names of the organizations in the Filter Works box (green box). For example, filtering works for “Princeton” yields 9,020 works, the shake movies in the EarthScope repository authored by Princeton. Clicking the title for a work shows the creator tab which includes Princeton as a creator of the dataset.

{{< figure src="/img/blog/earthscope/datacite-commons.png" caption="Figure 1. DataCite Commons pages from EarthScope (left) and Princeton (right) that show ShakeMovies created by Princeton in the EarthScope repository." >}}


The fact that ROR IDs of creators appear in the Commons output for the repositories that hold the resources and mint the DOIs is great, but it is expected. An unexpected benefit of these ROR IDs is that they create a two-way link between the repository and the partner organization. This link is visible through the DataCite Commons page for Princeton which shows over 13,000 works (Figure 1, right). Filtering these for “ShakeMovie” returns the Global Shake Movies in the EarthScope repository. The link added to the EarthScope metadata makes the connection to Princeton that is discovered by DataCite Commons.

At the time that these data were collected, the Princeton ROR ID was associated with about 13,000 items discovered by DataCite Commons. Over 9,000 of these, i.e., 68%, are the shake movies in the EarthScope repository. The amazing thing is that these items showed up on the Princeton DataCite Commons “profile” automagically – without Princeton doing anything. This behavior is like items added to DataCite showing up on a researcher’s ORCID profile, but for organizations instead of individuals. The DataCite Commons page for an organization ROR acts like an ORCID profile for an individual.


{{< figure src="/img/blog/earthscope/partnerships-chart.png" caption="Figure 2. Resources created by partners in the EarthScope repository and on the partner DataCite Commons pages. The percentage of items on each DataCite Commons page represented by EarthScope resources is shown for each partner." >}}


Figure 2 shows partner resources in the EarthScope repository and in the partner Commons pages. EarthScope resources represent over 68% of DataCite resources for many partners. In the scenario described here, EarthScope has provided data management services to partners for many years. Adding ROR IDs to the EarthScope metadata for these datasets adds an increasingly important connection service to these partnerships.

We can explore organizational creators in other repositories using this DataCite API query: 

<pre style="font-size:.7em;">

https://api.datacite.org/dois?&affiliation=true&publisher=true&page%5Bsize%5D=1&query=creators.nameType:Organizational

</pre>


Results from this query indicate that almost 1.4 million records have organizational creators. Table 2 shows the ten repositories with the most organizational creators and the number of those creators in each. EarthScope just makes it into the list at number ten!

In a sample of 10,000 records with organizational creators from each of these repositories, the Distributed System of Scientific Collections ([DiSSCo](https://www.dissco.eu/)) is the only one besides the SAGE repository that includes identifiers for their organizational creators. Their most common creator ROR ID in DiSSCO identifies the Naturalis Biodiversity Center ([https://ror.org/0566bfb96](https://ror.org/0566bfb96)), a biodiversity museum in The Netherlands that coordinates closely with DiSSCo. The Commons page for this organization shows 5,914,589 works associated with this ROR ID, with 99% of them created in a major expansion of the DiSSCo repository during 2025. This is a clear bright spot that uses ROR IDs effectively to recognize their partners!

**Repository Name**|**Repository ID**|**# Organization Creators**
:-----:|:-----:|:-----:
Distributed System of Scientific Collections (DiSSCo)|ylqb.ybhfwy|5,913,321
Global Biodiversity Information Facility|gbif.gbif|3,892,516
International Treaty on Plant Genetic Resources for Food and Agriculture|fao.itpgrfa|1,869,523
Genebank Information System of the IPK Gatersleben|ipk.gbis|209,708
Plutof.  Data Management and Publishing Platform|estdoi.bio|193,783
Leibniz-Institut für Astrophysik Potsdam (AIP)|tib.aip|176,253
HEPData|cern.hepdata|139,852
TERN IGSN ID Catalogue|tern.igsn|130,697
Hochschularchiv SRP|stdp.jwqddo|124,452
NSF Seismological Facility for the Advancement of Geoscience (SAGE)|iris.iris|111,781

<p style="font-size:.8em;font-style:italic;">
Table 2. Top ten DataCite repositories with Organizational creator nameTypes and the number of records in each with that type.</p>


## Conclusion

ROR IDs can serve as identifiers for research organizations in several roles. Historically attention has focused on organizations that researchers are affiliated with, but organizations can also act as creators or contributors themselves. In those cases, the DataCite nameType is "Organizational" rather than “Personal”. Over 1.4 million DataCite resources have organizations as creators and over 44 million have organizations as contributors, providing rich opportunities for DataCite members to take advantage of ROR IDs in their metadata.

Eight organizations account for over 110,000 resources in the EarthScope repository and seven of these had ROR IDs at the beginning of this project. We worked with ROR to create a new ROR for that organization (the Global CMT Project) to complete the identifier coverage. 

Adding identifiers for these organizations to the EarthScope repository represents an important “connection service" provided to these partners by EarthScope and inherent in the two-way nature of ROR IDs and other identifiers. This kind of connection occurs for all ROR IDs added to DataCite metadata and DataCite Commons provides an auto-update of resources associated with organizations like the auto-update capabilities for ORCID iDs for researchers. If you are an organization that hosts, creates or contributes to datasets in DataCite, make sure your ROR ID gets into the metadata so that your resources are visible through DataCite Commons. 

{{< figure src="/img/blog/earthscope/metadata-game-changers.png" class="blog-figure" alt="Metadata Game Changers logo" >}}

{{< figure src="/img/blog/earthscope/earthscope-logo.png" class="blog-figure" alt="EarthScope Consortium logo" >}}

{{< callout color="green" icon="fa-envelope" >}} 
Comments or questions? Contact support@ror.org.
{{< /callout >}}


