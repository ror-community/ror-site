+++ 
title = "Dutch Research Council (NWO) and ROR" 
date = "2026-02-11T16:32:15-05:00"
draft = false 
tags = ["NWO", "Funders"] 
categories = ["Case Studies"] 
archives = ["2026"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/nwo/nwo-logo.jpg" 
images = ['/img/blog/nwo/nwo-logo.jpg']
authors = ["Hans de Jonge"] 
description = "The Dutch Research Council (NWO) announced recently that it has integrated ROR in their open API. Hans de Jonge, director of Open Science, tells us why and how NWO uses ROR in this latest installment of our case study series."
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


{{< figure src="/img/blog/nwo/nwo-logo.jpg" class="featured-figure-small" alt="NWO logo" >}}


The Dutch Research Council (NWO) [announced recently that it has integrated ROR in their open API](https://www.nwo.nl/nieuws/research-organisation-registry-identifiers-geintegreerd-in-open-api). Hans de Jonge, director of Open Science, tells us why and how NWO uses ROR in this latest installment of our [case study series](https://ror.org/categories/case-studies).

See also Hans de Jonge's recent presentation at the ROR Annual Meeting session [How ROR Can Help Research Funders.](https://ror.org/events/2026-02-04-how-ror-can-help-research-funders/) 

---


### **What made you decide to use ROR?**

[NWO](www.nwo.nl) is the major research funding council in the Netherlands with a longstanding commitment to Open Science. About five years ago, we decided we needed to apply the principles of Open Science not only to our grantees but also—as much as possible—to our own data. We decided to move away from using proprietary data for our annual [open access monitoring](https://doi.org/10.5281/zenodo.13885012) and use open metadata only. 

We developed an [open API](https://www.nwo.nl/en/how-to-use-the-nwopen-api) which makes structured data for all our funded projects and their outputs openly available as open data for anyone to use. Universities use this data for instance in developing institutional dashboards about the external funding they acquire, but the data is also available for researchers. 

We also developed a [PID strategy](https://doi.org/10.5281/zenodo.4674512)for our organization, outlining that over time we would implement DOIs for outputs, ORCIDs for researchers, [Crossref Grant IDs](https://doi.org/10.64000/x7d4h-x3r11) for our awards, and ROR for organizations. We have now integrated ROR into our API, meaning that the affiliations of all researchers in that database (PIs as well as their collaborators) are now identified with ROR.


### **How do you use ROR?**

For the moment we only use ROR in our NWOpen API. In the back end a database is running which converts organizational information to ROR IDs. The challenge here was that our own organisation master list included both top-level organisation names and child organisations. Quite a bit of manual validation came into this. 

The ambition is to integrate ROR more fully in our grant management system. Like many national funding councils, we have a custom-built grant management system called ISAAC,  and we are currently in the process of renewing that system. PID integrations (ROR, ORCID and Grant ID) are high on the list of requirements. 


For now we hope that exposing ROR through our NWOpen API will already help users to better identify organizations. Our old field consisted of a mix of top level organizational names and faculties and departments (“University of Utrecht | Faculty of Veterinary sciences | department Clinical Sciences”). Introducing ROR allows people to just search for Utrecht University’s ROR and retrieve [all funded projects](https://nwopen-api.nwo.nl/NWOpen-API/api/Projects?ror_id=04pp8hn57). 


We are also considering exposing ROR on our [project website](https://www.nwo.nl/en/projects).


### **What were the steps you took to integrate ROR into your systems and workflows?**

The honest answer is that it took us quite some time. The difficulty was that it collided with other data-related projects within our organization. But we are very proud to have pulled it off, because it immediately shows people within and outside of our organization the enormous potential of persistent identifiers. We experienced the same thing when we introduced [Grant IDs](https://www.nwo.nl/en/news/nwo-funded-research-projects-get-unique-identifier-with-grant-id) two years ago.

### Anything more to say about ROR?

We are proud to join the growing ROR community. Persistent identifiers are a key enabler in the world of scholarly communication and open science. We are very well aware that we as a funding council have a role to play -- not only in using PIDs to our own benefit but contributing to this landscape by integrating them into our systems and exposing them so all these entities can be better connected to the benefit of an open scholarly ecosystem.

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 