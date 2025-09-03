+++ 
title = "HighWire Press's DigiCorePro and ROR" 
date = "2025-09-03T16:06:44-04:00"
draft = false 
tags = ["HighWire Press", "MPS", "DigiCorePro"] 
categories = ["Case Studies"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/digicorepro/DigiCorePro.png" 
images = ['/img/blog/digicorepro/DigiCorePro.png']
authors = ["Amanda French"] 
description = "In this interview with HighWire Press's Tony Alves, we learn that thanks to customer requests and a PID-aware development process, the publishing platform DigiCore Pro uses ROR in form lookups and automatic extraction processes for author affiliations, funder identification, peer reviewer affiliations, user disambiguation, and research integrity."
doi = ""
crosspost = ""
+++ 

{{< figure src="/img/blog/digicorepro/DigiCorePro.png" class="featured-figure" alt="" >}}

In this interview with HighWire Press's Tony Alves, we learn that thanks to customer requests and a PID-aware development process, the publishing platform [DigiCore Pro](https://www.highwirepress.com/solutions/digicorepro/) uses ROR in form lookups and automatic extraction processes for author affiliations, funder identification, peer reviewer affiliations, user disambiguation, and research integrity. 

{{< callout color="green" icon="no-icon" >}} 

"We want to accommodate as many industry-accepted processes and tools as we can, and ROR is of course extremely important now."

"Our customers are asking for it. We're seeing ROR on Requests for Proposals (RFPs) as a requirement, especially now that it is being used at Crossref to identify funders."

"The person uploads their manuscript, and we then look through the manuscript for header information, pull that out, match it to the ROR ID, and present it as fields that are already filled in that they can change if need be to something that's correct." 

"And what's great is that because it's open source, an open standard, we don't have to constrain ourselves."

"I really appreciate the community around ROR, the vibrancy of that."

– Tony Alves, Senior Vice President, Product Management at HighWire Press, Inc. 

{{< /callout >}}

---

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Tell us about what made you decide to use ROR at HighWire, specifically in the [DigiCorePro](https://www.highwirepress.com/solutions/digicorepro/) publishing platform.
 
### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves 

Sure. There were really a couple of different things. **One is that we want to accommodate as many industry-accepted processes and tools as we can, and ROR is of course extremely important now.** ROR is really helpful, because it provides us with a standardized list of institutions that people can pick from rather than typing them in. And because ROR is free and open, we could implement it without having to pay anybody, which is really, really helpful.

**The second thing is that our customers are asking for it. We're seeing ROR on Requests for Proposals (RFPs) as a requirement, especially now that [it is being used at Crossref to identify funders](https://doi.org/10.13003/156081).** I like the fact that now there are fewer PIDs that we need to worry about. In those RFPs, people want ROR as not only an institution identifier for author affiliation, but they also want it as the funding PID. Also, of course, we can offer ROR to people who can't afford a more expensive persistent identifier.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Great! You've touched on this a little bit, but how is ROR used in DigiCorePro?

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

It is used as the basis of a pick list when people are selecting their institution so at that institution level it's a typeahead, so you start typing, and you'll get the the ROR. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Do they see the ROR? 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

They just see the institution name. They don't see an identifier.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

That's actually what we recommend, so that's great. 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

We capture the identifier when the institution name is selected, and so when the metadata is transmitted, if the API wants the ROR, then that will be there for the affiliation institution field. Authors can have multiple affiliations, too, so you would then have multiple ROR IDs for the different affiliations. We have also implemented it as an identifier for funders. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

That's great. 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

In both cases, we do try to anticipate the institution when we extract the metadata and match it with the ROR ID. We do that when we can for both funding and the person's institutional affiliation. **The person uploads their manuscript, and we then look through the manuscript for header information, pull that out, match it to the ROR ID, and present it as fields that are already filled in that they can change if need be to something that's correct.** 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Oh, that's interesting. It's great that you do that. I think that's a popular approach these days, and it's so much easier for the author. 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

We want to make it as simple as possible. The funder information is hard because there's not a standard way of providing that information. People are still providing it in paragraph format somewhere, you know, even if you've asked for it in a certain place, right? So that's always a challenge. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Those funding acknowledgements are very non-standardized. You mentioned that DigiCorePro transmits this metadata, including the ROR IDs, via an API. Where are some of the places that metadata might be transmitted to? 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

Oh, there are all kinds of uses for our API. For example, it might go to a research integrity check tool, and depending on what data they want, the ROR and the affiliation information would be part of that. If there's a place in their schema for ROR, it would fit in there. If their schema has just a general institution field, the institution name would go in there. There are also systems like [Convey](https://www.convey.org/) that collect conflict of interest information. Convey was created by the [Association for American Medical Colleges](https://www.aamc.org/). We query Convey's database for conflict of interest information, so if ROR was part of that, it would be in that exchange.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

I'll contact Convey to see if they use ROR or are planning to use ROR!

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

It also might be [Prophy](https://www.prophy.com/) or [Global Campus](https://globalcampus.ai/) or [Reviewer Credits](https://www.reviewercredits.com/), any of these reviewer finding tools that might get the ROR IDs from the API.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

I know Prophy uses ROR quite heavily. 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

There's also [ORCID](https://orcid.org). We can pull in the ROR if it's in the ORCID record, or we can push the ROR out if somebody is establishing an ORCID record.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Yes! I actually can't wait for the day when all of the organization and funder identifiers in ORCID are ROR IDs. And I think that day is not too far away. Increasingly, [ORCID is standardizing on ROR](https://info.orcid.org/event/better-together-orcid-ror/). 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

Anytime we need to push affiliation information and ROR is in the API, in the schema, that's what we'll do with the information.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

What was the development process like for building ROR into DigiCorePro?

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

We use an Agile process to develop the product itself. Part of what we do is to look at how something is implemented in [BenchPress](https://www.highwirepress.com/solutions/highwire-benchpress/), then try to figure out what might be the best way to do that in DigiCorePro, which is more modularized. Specifically with ROR, we understand that there are multiple ways to use ROR, as I've been discussing, either as a person's affiliation or as as a funding ID. Also, there are multiple journeys for ROR: some systems are going to want the ROR IDs from us and some systems are going to send the ROR IDs to us. We create stories to describe how ROR will be used in DigiCorePro. How is the ROR ID going to get to us or be sent out? Where are we going to be using the ROR ID in the workflow process? Those get written into stories, and then those go into the development process as we develop the various features. 

Persistent identifiers in general are always being considered for all the processes. Would persistent identifiers be needed in this process, in this interchange? What will those persistent identifiers be, or might there be a persistent identifier in the future that we might want to be sure is included in the design of this feature or function? We keep that in mind because we can see, just from our understanding of where the industry is going, that different aspects of the manuscript could potentially have different persistent identifiers. 

For instance, for reviewers, it's better to have the the ROR for that person than it is to have the name of the institution, because the reviewer doesn't get it right when they type it in. They're just going to type in "UMass" or "Harvard." We want to be able to be sure that if we are getting that information about that reviewer, that we have that consistent information. 

It also helps us to disambiguate people. The ORCID is important for that, but sometimes when we give a journal staff person an opportunity to look at multiple people's records, if somebody has somehow gotten registered two or three times, ROR is one of those things that will give them enough information to disambiguate and to identify which records need to be merged. 

Similarly, with research integrity, if you have somebody who doesn't have an institution that is in ROR, then potentially that may not be a real institution. We know that you don't yet have all the institutions, necessarily, and that sometimes new institutions come up, but it can still be a useful piece of information. 

So those are some of the ways that we think about ROR and other persistent identifiers in the development process. Will it be something that will be a useful element in this workflow? **And what's great is that because it's open source, an open standard, we don't have to constrain ourselves.** 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Is there anything else you want to say about ROR?

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

**I really appreciate the community around ROR, the vibrancy of that.** I enjoyed [PIDapalooza](https://www.pidapalooza.org/), and that was really a great [launching pad for ROR](https://doi.org/10.71938/0eh7-xg96) because ROR is community-based and has an active advocacy group around it. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Lastly, any feature requests or suggestions for future directions?

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

I think that from a systems perspective, being sure that your API is super-responsive in real time is really useful, because we can't stop the submission process when an author is there to submit. I know it's possible to download ROR and use it locally, but that means having a process to get the most recent version. That's probably the safer implementation, because then if the API goes down, you're not dependent on that, but then you don't always have the most up-to-date information. That's a struggle everybody has with these sorts of things when you're dependent on an API for an essential process like identifying affiliation, so I think that's an important part of your infrastructure to be sure is really stable. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Yes, ROR is quite a small dataset, so downloading the data and store it locally is one of the [implementation approaches](https://ror.readme.io/docs/forms#/implementation-approaches) we recommend, for precisely the reasons you mention. That being said, the ROR API has been very, very stable. It's had [great uptime](http://status.ror.org). 

However, because the ROR API is totally free and open, and because ROR is getting more and more popular, we're seeing some excessive use that can cause issues. That's one of the reasons why we recently started an initiative to implement [client identification](https://ror.readme.io/docs/client-id#/) on the ROR API so that API users need to tell us who they are before receiving the current rate limit. We're phasing that in gradually. Once it's implemented, if somebody is using the ROR API incorrectly and therefore degrading the performance of the API for everybody else who's using it, we can contact that API user and help troubleshoot the issue instead of just blocking their IP address. 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} 

Good to hear. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Thank you so much for talking with me, Tony. 

### {{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} 

Thanks so much. 

{{< callout icon="fa-envelope" >}} 

Write us at support@ror.org with any comments or questions.

{{< /callout >}} 