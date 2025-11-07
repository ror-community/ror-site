+++
title = "Case Study: OpenAlex, ROR, and Machine Learning Models"
date = "2023-09-13"
draft = false
tags = ["Adoption", "Integrations", "Community", "Machine Learning", "Interviews", "OpenAlex", "SKGs"]
categories = ["Case Studies"]
archives = ["2023"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.jpg"
thumb = "/img/blog/openalex/OpenAlex-logo.png"
images = ['img/blog/openalex/OpenAlex-logo.png']
authors = ["Amanda French", "Adam Buttrick"]
description = "Justin Barrett, Lead Machine Learning Engineer for OpenAlex at OurResearch, talks with ROR Technical Community Manager Amanda French and ROR Curation Lead Adam Buttrick about using ROR in OpenAlex both as an identifier for institutions and as a dataset for training machine learning models."
doi = "https://doi.org/10.71938/5q2g-gp90"
+++

Justin Barrett, Lead Machine Learning Engineer for OpenAlex at OurResearch, talks with ROR Technical Community Manager Amanda French and ROR Curation Lead Adam Buttrick about using ROR both as an identifier for institutions in OpenAlex and as a dataset for training machine learning models that enrich OpenAlex metadata.

{{< callout color="green" icon="no-icon" >}}

## Key quotations

"When we started to make the second version of the institution parsing model, I got a lot deeper into ROR, and that's when I started to use a lot more of the data, like the aliases and the acronyms and the relationships. ROR became a lot more central to our model, because I was using it so much, and then also because we made the decision to not include non-ROR institutions in our database. We switched to completely ROR institutions."

"ROR is playing a huge part in the author disambiguation as well, because we're using institutions to determine if authors are the same. Unfortunately, you can't only use institutions to decide that. You can't only use co-authors, you can't only use topics, so we're using a mixture of all of those things. We're getting that institution from the author's affiliation string and parsing it, and that's going directly into our author disambiguation model to try and match that institution. So ROR, again, playing a vital part in our system."

"The artificial strings have made it a lot more robust of a model, and we wouldn't have been able to do that without the ROR data, because we would have just had to use existing affiliation strings."

-- Justin Barrett, Machine Learning Engineer, OurResearch

{{< /callout >}}

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French

Thanks so much for talking to Adam and me, Justin. Can you tell us your name, title and organization?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
My name is Justin Barrett. I am the lead Machine Learning Engineer for [OpenAlex](https://openalex.org), which is a part of the [OurResearch](https://ourresearch.org) group. OpenAlex has been around since 2021, and I joined pretty early on, so I've been working for them for a little under two years now.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Tell us about OurResearch, and tell us about OpenAlex.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
The overall goal of OurResearch is to increase open access, open data, and open science for everyone. OurResearch has several different projects to promote that. There's [Unpaywall](https://unpaywall.org), which tries to get Open Access articles to end users. There's [Impact Story](https://profiles.impactstory.org), which I believe is the first project that our CEO Jason Priem created with Heather Piwowar, who used to work at OurResearch and was a co-founder. There are a lot of projects, and all of them try to make open science a reality for more and more people. And that's basically what OpenAlex is continuing to do. We have established a large database of research that is completely open for everyone. If they want to, they can download a snapshot of our entire database and use that any way that they want to -- to create recommendations, to create their own website, to create their own analytics. It's really just empowering people to do that.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Great. And can you tell us a little bit more about the origin of OpenAlex?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Microsoft built and maintained the [Microsoft Academic Graph](https://www.microsoft.com/en-us/research/project/microsoft-academic-graph/), MAG, and then decided to sunset that whole system. And at that point, Jason and others in OurResearch decided that it was a good time to try and take over what MAG was doing, because they were serving a pretty important function for a lot of people. They knew that there were a lot of people that were going to be missing out with MAG not updating their database anymore. OpenAlex was created to jump on that opportunity in order to continue to provide researchers, academics, with access to the data in MAG coming in through [Crossref](https://www.crossref.org), coming in through [PubMed](https://pubmed.ncbi.nlm.nih.gov/), coming in through a lot of different data sources. OpenAlex is just trying to fill that gap.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
And were you party to any of the discussions with Microsoft about that?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I was not. I came on after the decision was made to carry on MAG's work. Jason contacted me because there were models that MAG already had within their system that Jason needed to have replicated at the very least and then eventually improved upon. The first project that I worked on was creating a [concept tagger](https://github.com/ourresearch/openalex-concept-tagging) for papers, a topic tagger based on the title of the paper and on the abstract if we had it. That project was the first where we were trying to bridge the gap between just getting the data in and enriching it with some of the features that MAG was enriching all of their data with.

Concepts was where it started, and institution parsing was next. There have since been a couple of different iterations for both of those models. Then it was author disambiguation, and that's actually the current project that I'm working on, to completely revamp that system so that it's improved. We're hoping to release that this week or next week. [Read the [release announcement for OpenAlex Authors](https://groups.google.com/g/openalex-users/c/jzlh1Mp_s-g).]

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Can I ask you about your background and why Jason came to you when he needed somebody to work on these models?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
That's a good question. I guess it comes down to just luck. He hired me through [Upwork](https://www.upwork.com/), which is a pretty popular platform for hiring contractors for short-term projects. I went to school for aerospace engineering, and I got my master's in mechanical engineering. I have a lot of coding experience from my years in engineering, and during my master's I got into Python a lot more. When I went through my master's, I figured out that I didn't want to do mechanical engineering anymore, and I did a lot of self-learning through [Coursera](https://www.coursera.org/) and [Udemy](https://www.udemy.com/) and basically made that jump over to data science.

I pretty quickly started specializing in [deep learning](https://en.wikipedia.org/wiki/Deep_learning) applications. [Natural language processing, NLP,](https://en.wikipedia.org/wiki/Natural_language_processing) and deep learning are what I like to do and what I'm pretty competent in. Jason found me when I was about a couple of years into Upwork. I also had a job at Advance Auto Parts as a data scientist, so I had been doing a lot of AI and machine learning work. And I guess when I applied for the job on Upwork, Jason liked my experience. Then we met, and it all went from there.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French

When and where did you personally first hear about ROR?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
When I was creating my first institution parsing model here at OpenAlex. That was my first time hearing about it, and so I wasn't aware of how much data was available in ROR. My CEO, Jason Priem, told me that ROR would be a good source of information for institutions.

At that time, for our first model, we inherited all of our institutions from MAG, and so we had non-ROR institutions included in there. I wasn't as eager to go to ROR completely, because I had enough institutions where I thought, "All right, I need to not depend on ROR, because a lot these institutions are not included in ROR." And so I used ROR for gathering additional information about the ROR institutions, like a city and a state -- basically, I used it to supplement all the data that I couldn't find within MAG. City, state, and country were the main things that I used for the first version.

**When we started to make the second version of the institution parsing model, I got a lot deeper into ROR, and that's when I started to use a lot more of the data, like the aliases and the acronyms and the relationships. ROR became a lot more central to our model, because I was using it so much, and then also because we made the decision to not include non-ROR institutions in our database. We switched to completely ROR institutions.** That is something that we could possibly change in the future, if we maybe generate a list of institutions that we want to also include in our database, but we made that decision to kind of streamline all of our data, because it's a lot easier to keep track. But that's basically how I started hearing about ROR and started using that data.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Were there institutional identifiers in MAG that you inherited?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
MAG had an institution identifier that was an "I" followed by whatever number MAG had assigned to that institution, so those were the IDs that I used. We had a mapping from those institution IDs to a ROR ID if there was one available. Those were the institution IDs that I used at first, and now that we're using ROR only, there's basically a one-to-one mapping of ROR IDs to OpenAlex's Institution IDs.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
Can you talk a little bit more about this streamlining? Why did you pivot to narrowing the [OpenAlex institution model](https://docs.openalex.org/api-entities/institutions) to use only ROR IDs?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
We did a little bit of analysis at first to see "Okay, what's the distribution in OpenAlex as far as the number of papers for ROR institutions versus non-ROR institutions?" Through that analysis, we found that about 97% of institution assignments were ROR institutions. 

In addition to that, a lot of our non-ROR institutions were just garbage. They weren't linking to any [Wikidata](https://www.wikidata.org/wiki/Wikidata:Main_Page) page, they didn't have any information about location, and some of them were duplicates of ROR entities. The more we looked into it, the more we wanted to just start with ROR, and then maybe in the future, we could start adding institutions on top of ROR.

So we just made that decision, and it made my job a lot easier when it came to assigning institutions. It cleaned up the training data, it allowed me to try out different things with the training data, and it just made things a lot easier.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Have we ever talked with you about adding OpenAlex institutions to ROR that don't currently have a ROR ID?

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I don't know if we talked to Justin about it, but I have done it, because I used to look at OpenAlex a lot and say "What isn't in here? What looks valid?" My conclusion in doing that was very similar to Justin's, that there's a bunch of things that are essentially duplicates of existing organizations, and there were some defunct organizations, like organizations from the Soviet Union that don't exist anymore, that kind of stuff.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
There was also a separate process that happened when we converted to ROR-only where we looked at some of those top institutions that were considered non-ROR, the ones that had the most papers associated with them. We made sure that they were not supposed to link to an actual ROR ID.

We ended up merging a lot of our institution IDs to make sure that we weren't dropping too many, and we found a large percentage of them that should have linked to a ROR and didn't or that had a separate ROR for that entity. That was another member of our team who took care of that process. At the end of the day, we currently only have ROR institutions that are getting tagged for our affiliation strings.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
Just to give the people who will be reading this interview some perspective, what's the scale of works in OpenAlex that are being indexed with ROR IDs?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I think OpenAlex has around 243 million works as of right now. Of course, not all of those have institution strings or affiliation strings that come with them. The last time I checked, about 80% of the new data we have coming in has an affiliation string. When you go back to some of the old data in MAG, papers from the 1960s and 1970s, a lot of those are missing institutional strings, but for our more current data, I would say about 80% at least have an affiliation string with them, so they are getting matched to a ROR ID.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
That's great. But it also kind of highlights the need for publisher partners to contribute those, to impose that little bit of order onto the chaos of it and not let the metadata wither in the same way that the historic data has done.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Yeah, it would be nice if it came in with a ROR ID from the publisher.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
We're working on that!

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
I'd like to hear a bit more about how the matching that you do works and how you get new ROR data.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
We get the ROR data a couple of different ways. When I was creating this model, I used the most recent [data dump](https://ror.readme.io/docs/data-dump) to get an updated snapshot of all the ROR data, and then that's what I used to perform all the string matching. Currently, that snapshot is what the model is using in order to match those strings.

In the future, we are going to be doing that slightly differently, because we will be implementing some processes to use the [ROR API](https://ror.readme.io/docs/rest-api). I believe we're using the ROR API to update some institution data in our database with ROR data, but that is not propagating through our whole system as of right now. I didn't work on that project, that was one of our data engineers. But I believe at some point in the future, we will ping the ROR API once a day to check to see if any of the data has changed for specific institutions, and if there's a change, we will take that data and put it into our system.

When I get done with the author disambiguation project, institutions are something that I'm about to start looking at again, and because we are now populating our own database with ROR data, that gives me the opportunity to constantly update the strings that it's matching on. The process of matching those strings will be a little more streamlined to current data, as opposed to right now where it's just a snapshot from the past, which probably works most of the time, but which doesn't give me new data that you guys are providing, and which doesn't correct any data that might be wrong from that snapshot. I'm looking forward to getting back into institutions and making it more of a sustainable pipeline as opposed to what it is right now, where it's kind of a point in time model.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I have a related question. Did you work on the [new funder model](https://groups.google.com/g/openalex-users/c/NTTXy0315vg/m/Hg9XSgb5AQAJ) that has been integrated? I saw that the OpenAlex [funder model](https://docs.openalex.org/api-entities/funders) also integrated ROR, so I wondered if the ROR data was being pulled in in the same way.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I did not work on that, so I could not speak to the funders. But I know that was a big project that we were pretty excited about releasing.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
It was very forward thinking to include ROR ID mappings, because over the long term, [the Funder Registry and ROR are intended to merge](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/). It's a long ways out, but you'll be ahead of the game, because you already have a Funder ID to ROR ID mapping in the Funder object, so you can just privilege one ID or the other.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I'm sure it won't be that easy at the time, but we'll have a head start. I wish it was always as easy as a one-to-one mapping from one thing to another.

We have the alpha version of our [user interface](https://alpha.openalex.org/) up right now, which is very rough, but it gives you kind of a preview of what we will probably have within the next month or two. It'll be really nice: you'll be able to look and see funders and institutions and all that information pretty easily. Before, you could look at that information, but it wasn't really user friendly, so we're pretty excited about the UI that's coming.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
Do you know if you'll leverage things like [ROR hierarchies and relationships](https://ror.readme.io/docs/relationships) in the UI such that the works of child organizations can be associated with parent organizations? Some people have done that, others have not, so I wondered what OpenAlex's approach would be.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett

At first, no. At first, it'll probably just be a mapping to each institution's own ROR ID in the alpha version of the UI. Once we start getting into subsequent versions, I think that we'll start looking to link all of the data a little bit better, so yes, at that point we'd probably add ROR institutions with the parents and children and all those relationships. However, we have recently started leveraging some of the ROR relationships and hierarchies in our API. It is a separate [feature called ‘lineage’](https://docs.openalex.org/api-entities/institutions/institution-object#lineage) which links the children of an institution with the parent only if a parent was tagged using our institution parser. Eventually this feature will make it into our UI but for now it is only accessible through our API. Concepts also have a defined hierarchy that we would be most likely looking to leverage at some point in the future. So yes, there are a couple of things that we'll be looking to improve in our UI, but getting a better version out there to start is our top goal.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I think everyone's really excited for it. I know from the [OpenAlex user group](https://groups.google.com/g/openalex-users) that people are super engaged with everything you're doing with the UI.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
You've already touched on this, but what are some of the major things on the OpenAlex roadmap that are coming up?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
As far as our roadmap, author disambiguation is at the top of my list, and it has been for the last four or five months. Originally, we had a very patchwork model that we built when we first came away from MAG just so that we wouldn't be minting new author IDs for every author that came into our system. We needed to improve on that, which we did with the v2 model, which is what we have now. But there were still a lot of improvements that we could have made.

This version 3 model should improve our author disambiguation system a lot. Right now we get a lot of feedback like, "Hey, my name is split into 20 different profiles, and my ORCID isn't in my top profile, can we fix this?" And we say, "Yes, we would love to fix that." I would say that the system we currently have isn't good with merging clusters or taking them away. We have to do it very manually, which is okay at the moment, because there aren't a ton of users who are asking us for this. We're getting a lower number of requests than we can deal with. But eventually, if we want to scale up, and we have thousands of users or hundreds of thousands of users asking us to change their author profiles, we want to make sure that the system we're building now can handle that.

And then we also want to make sure that we have a system in place for them to make those changes themselves. One of the big things that's going to be coming out eventually is that we're going to let authors request changes to their own profile. If they see that a work assigned to them doesn't belong to them, they'll be able to submit a request to get that work removed, and then our system will either try to assign it to the next most likely author or will create a new author for that work.

We'll also allow authors to merge two profiles, and we'll allow them to add works to their profile, and we'll have some process for authors to claim a profile on OpenAlex. It should be a pretty cool improvement, but to do it we need a good author disambiguation model and good author clusters to begin with. That's what our current goal is.

We have a lot of different projects going on. One of our team members is working on increasing the number of statistics, the "science of science" metrics that we have within our system to make filtering easier through the API. We want to give people more ways to filter our data for metrics like "number of works within the last five years" or "percentage of citations within the last five years." Right now there just aren't as many metrics to filter on.

We also have general system architecture projects. We're trying to make it so that our data is updated much more quickly so that when we eventually get to a place where users are sending us requests for data to be changed, those results will propagate through our system much more quickly than they do right now. One of our engineers has been working on that for probably the past week or two, so I'd say that's another big project.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Do you have any sense of who the users of the OpenAlex API are, roughly?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
We have some idea because of the requests that we're getting -- the problem reports, or bug reports. We have a group of people that submit tickets for any number of reasons, and there are definitely a lot of graduate students that are asking us, "Hey, can you increase the limits for the API for this email address so that I can pull up more data?" Just based on the number of grad students that message us about increasing their API limits, I would think that those are one of our largest groups of users for the API. I can't imagine many other groups that are more prominent for API usage.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
What are they doing with the OpenAlex API? What are they using it for?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
That is a good question. When people submit support tickets for us, a lot of the time they include the reason why they need the API increase. We don't need that reason; all we need is an email from you requesting more data from the API, and usually we just give the user a higher limit. But a lot of people will tell us about the research they're doing. They want to analyze trends. Some of them want to analyze trends because they want to figure out where they should research, what topic they should explore, where they should submit a paper.
 
There are a lot of interesting support tickets that come in that tell us why people are using our API, but we don't really analyze API usage as far as what people are searching for in the API.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
Could you tell us a little bit more about the author disambiguation that you're doing? Your new author model is more tightly coupled with ORCID, is that correct?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Yes. For our [new model](https://groups.google.com/g/openalex-users/c/xEJi9IwjYa8), we are treating ORCID as the source of truth for author data. That comes with some drawbacks, because ORCID data isn't always reliable, so there are issues with that as well. But our hope is that over time those issues will get resolved, and our data will be resolved with it.

We have a lot of ORCID data in our system. We realized that we had gaps in our data where Crossref wasn't giving us an ORCID, possibly. Something was happening where you'd look in the ORCID public data dump, and there'd be a DOI that had an ORCID attached, and we'd look in our system and we would not have that ORCID. We've reconciled a lot of those differences.

ORCID is the basis of how our clustering starts. The ORCID clusters are the clusters we start with, and then we have some algorithms that are matching works to those clusters. If they don't work, they don't match with those ORCID clusters, then they are creating new clusters.

So yes, ORCID is at the center of what we do, at least for author disambiguation. It was able to give us a good training dataset. That's the hardest thing about author disambiguation, is finding good training data. Which brings us right back to ROR, because that was also giving us good training data for training our model, because sometimes we couldn't depend on the MAG data to give us everything we needed. It's been very helpful.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I think that OpenAlex is going to become kind of a more interesting source of truth, or maybe a source for building services on top of. I don't know if you've heard that ROR is now the primary institutional identifier behind ORCID, because [Ringgold has opted not to renew their agreement with ORCID around data sharing for organizational data](https://info.orcid.org/orcid-support-for-ringgold-organization-ids-ending/). And because of the association between ROR IDs and authors' works, and now ORCID IDs by way of your new author model, I think that as a result of that people can make a lot more connections that probably weren't even exposed in either the Crossref API or the ORCID API. It's very cool.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
**ROR is playing a huge part in the author disambiguation as well, because we're using institutions to determine if authors are the same. Unfortunately, you can't only use institutions to decide that. You can't only use co-authors, you can't only use topics, so we're using a mixture of all of those things. We're getting that institution from the author's affiliation string and parsing it, and that's going directly into our author disambiguation model to try and match that institution. So ROR, again, playing a vital part in our system.**

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Awesome. Does the OpenAlex data model support multiple affiliations for authors? I would assume it does.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Yes. We did not used to. Our first version of the institution parser was pretty good, but it could not handle strings that had multiple institutions in it. And so we worked a lot with [CWTS](https://www.cwts.nl/). They help create the [Leiden ranking](https://www.leidenranking.com/).
 
They took samples of our data, and they came back with suggestions for ways that we could improve it. We ended up incorporating a lot of those suggestions into our v2 model, and one of the main ones was to fix the problem that we could not handle multiple institutions in a single string.

The v2 model that we created was highly dependent on ROR. The models in the first version of the institution parser used some ROR data, but they didn't really integrate ROR into our system. For v2, the way that we figured out to get multiple institutions in a string is to take the top 20 most likely institutions that the model says might match and then to use some custom string matching on those top 20 in order to see which ones would match. That has been very successful.

There are issues when it comes to longer strings that have more than three or four institutions in them. As you can imagine, the more institutions contained within a single string, the harder it is for the model to point you towards all of them accurately. There's definitely degradation when there's that many institutions within a string, but if you're looking at two or three institutions in a string, sometimes four or five, it can normally get all of them. It's pretty good.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Cool. Now I want to give you a chance to make some feature requests for ROR. What should we do that would make your life easier?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I know that the relationships between ROR institutions are very tricky sometimes. I see a lot of weird relationships, and I don't really understand how they work, and maybe that is actually how they are. I think that the next step for us is to use that relationship data. I would hope that when I start using it, it's ready to go, but I don't know if that'll be the case. We are working right now to look at French institutions. I don't know if you are familiar with how complicated that is.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I'm working on a project with the [Ministry of Higher Education and Research](https://www.enseignementsup-recherche.gouv.fr/fr) in France, and it can be challenging to reconcile local conceptions of relationship hierarchies with ROR’s data, as you say, and also what's an organization and what's not an organization. We're doing a lot of work on that. [Release [v1.30](https://github.com/ror-community/ror-updates/releases/tag/v1.30) of the ROR Registry includes a great many updates to French institutions as the result of this intensive curation work.] 

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
It was something that I saw when I was training the model. You see "CNRS" everywhere, and you see a bunch of different acronyms. I just assumed, "Okay, I see that acronym, and I know that the words in that acronym are this, and so, sure, we match that." But in reality, it's not that simple. And of course, we do not have those relationships correct with our current institution model. And so that's something that we are definitely about to tackle.

It's one of the reasons I'm going to be looking into institutions again is to try and figure out how to improve the French part of our affiliation matching, even though I know that it's very confusing. There are people that have solutions to that. There's a company, [SIRIS Academic](https://www.sirisacademic.com/), that has been developing some models to specifically deal with French institutions. We might be relying more on the open source community to come up with a solution to that, because I don't speak French, and I couldn't tell you the ins and outs of the French academic system or the research organizations, so it'll be helpful to get other people's points of view.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
You should keep us in the loop about that work. To give you a perspective on what we're doing on the curation side, the Ministry of Higher Education and Research in France maintains their own registry of research organizations and research structures.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Is that [HAL](https://hal.science/)?

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
No, it's separate from HAL. It's called [RNSR](https://www.data.gouv.fr/en/datasets/repertoire-national-des-structures-de-recherche-rnsr/), the _Répertoire national des structures de recherche_. It enumerates all the French research structures which exist at various levels of solidity.

We're working on a project to include various French research units, as well as their relationships to their parent organizations. We're starting out by improving our coverage for what are called [UMRs, _Unités mixte de recherche_](https://en.wikipedia.org/wiki/Unit%C3%A9_mixte_de_recherche), or "mixed research units." We're adding a bunch of them, making sure that they're better disambiguated,  and that they have the correct parents, based on the RNSR data.

In general, we're doing a lot of work around improving French research organizations, and are being graciously [supported by the French government to do that](https://ror.org/blog/2023-07-24-community-supported-infra#supporting-ror-through-global-coalitions) through the [French Committee for Open Science](https://www.ouvrirlascience.fr/home/). Hopefully, that will accrue benefit to OpenAlex. But I'd also be interested to know what you find as a result of doing the analysis, because I'm sure there are things that we've missed.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
You will hear something probably within the next month or two. I think that one of the other things is that there are sometimes universities that have many institutes underneath them, and I think sometimes not all of those institutes are in ROR, and not all of those institutes are linked to the correct universities. That's another thing that I have seen that could be improved. I mean, the ROR data's very useful to me, so I can't really think of anything that I would need to have it improved. It has been very useful to me so far.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Great. Good to know.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
It is really interesting to hear from someone who else is dealing with it from an aggregate perspective, though, because we're so used to talking to integrators who are dealing with it on a more one to one basis, or a more regional basis.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Yes, I'm dealing with them all.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
What else would you like to say about ROR, or about version three of the institution matching that you're planning, or about anything at all?

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I can say that one of the things that was most useful for us was that with all the information you can get in the ROR data, we were able to artificially create affiliation strings. We get raw affiliation strings from a bunch of different sources, but not all of the ROR institutions have affiliations in our system, and not all of them have a lot of affiliation. Some institutions have three or four affiliated works, while other institutions have thousands.

We built a process for creating artificial affiliation strings using certain patterns that you normally see in an affiliation string, and that was able to increase our coverage of ROR institutions. Maybe we had those strings in our system, but we weren't connecting them to a ROR institution because MAG never connected to them. Or maybe there's an institution that one day will give us papers that we need to parse, but they haven't given us any yet. This process allows us to get rid of a [cold start problem](https://en.wikipedia.org/wiki/Cold_start_(recommender_systems)) where you don't have any data about an institution, so when it comes into your system it does not get tagged because our model has never seen it before.

{{< youtube id="Tx5y7lX030U" class="blog-video" >}}

_Beginning at 03:34, watch Justin's presentation at the 2023 ROR Annual Meeting about OpenAlex's institutional parsing and how they used ROR to generate artificial author affiliation strings to use as training data._

**The artificial strings have made it a lot more robust of a model, and we wouldn't have been able to do that without the ROR data, because we would have just had to use existing affiliation strings.** If we wanted to add more data, we would have had to find each individual ROR institution that didn't have any data in our system and do manual string searching in order to get all of that training data, which would be very time-consuming. That's definitely something that we could potentially do one day, but we were looking for something that was a lot quicker, because the timeline was pretty short for the v2 institution parsing model.

So yes: as I said, for v3, I think I'll grab an updated snapshot of the ROR data so that I'm working with the latest and greatest, and I'll probably look into using our database, because we're grabbing data from ROR daily. I'll probably look into having those strings added to a dictionary that I keep up to with strings to match to ROR. It'll be fun to continue to develop the institutions model, because it's already pretty good at what it does, so just finding areas where it's not doing well and probably using ROR data to make it better will be a fun little problem.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I just want to say that your fake affiliation thing was a really brilliant piece of work. When I was reading through [your code](https://github.com/ourresearch/openalex-institution-parsing) and I saw that, I thought, "Oh, this is genius."

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
I truly can't take all the credit for it. I was in a meeting with Jason Priem, and he mentioned something about using the ROR data. He asked if we could use the ROR data to train on, and I said no, because we had non-ROR institutions we were looking to match. But then I realized we could do it, because affiliation strings have a standard syntax. It was probably a joint idea -- it wasn't just me. But it is a very good idea. Artificial data creation for non-structured data is almost impossible, but we're dealing with semi-structured data, which lends itself better to artificially creating something. So yes, that worked out pretty well.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I did actually write [a script](https://github.com/ror-community/affiliation-matching-experimental/tree/main/fake_affiliations) to recreate what Justin did, to take the [ROR data dump](https://ror.readme.io/docs/data-dump) and convert it into a set of fake affiliation strings. I don't know if it exactly follows the patterns that OpenAlex used, but others can use it to do the same thing, if they want. If they're building their own models, they want to supplement, they want to train, they can just pull the ROR data, run it through the script and do that.

I also want to say that it's fantastic that [OpenAlex does all this work open source](https://github.com/ourresearch) so that other people can see it and read it, because I was able to just immediately go through and read all of the code for the institution model, see how it was working, understand it, and read the [white paper](https://docs.google.com/document/d/1ppbKRVtyneWc7Hjpo8TOm57YLGx1C2Oo/edit#heading=h.5w2tb5fcg77r). And that's really fantastic, how much is being given back.

As we're looking at improving our [affiliation matching service](https://ror.readme.io/docs/api-affiliation), we have that benchmark, we have that thought process, so we don't have a cold start problem for improving our service, because it's all just out there in the open. There are so many other matching services for institutional identifiers that are closed and proprietary, and you don't have any idea how they're doing any of the matching or its level of correctness or its scores or anything like that. So what you're doing, that's great.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
A lot of people aren't used to how open we are with our data. People have asked, "Is there any way you could show me the code for this?" and I've said, "Oh, it's all in this repository right here. And here's a paper that explains how to do it. And here's the artifacts, if you want to grab these artifacts, you can just download them to your account." That's the one thing that Jason has said from day one. We are completely open. We want everyone to have our data. We want everyone to have everything so that there's no question of us being an open data, open science company. That is that's our number one goal. That's been the number one goal since OurResearch, and OpenAlex will continue to have that goal until we exist no more. But hopefully that will be not for a long time.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
It's great. And I think it accrues benefit to ROR, just as much as ROR accrues benefit to OpenAlex, that exchange of the open code, the open data, everything. Speaking of which, as part of our affiliation matching improvement, we put [new training datasets in a repository](https://github.com/ror-community/affiliation-matching-experimental). It's a large set of affiliation strings that were manually paired to ROR IDs at the [American Physical Society](https://www.aps.org/). They're all manually assigned, so it's good data, and it's about 15,000 pairs.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
Oh wow. That's a lot.

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
It's good for test scores. We also pulled all of the publisher-submitted items out of the Crossref API, which you can also use as a good benchmark. Now, of course, we don't know necessarily how those were assigned, because a publisher could use some matching service that we don't know about to assign their ROR IDs, but that's another good one. But the APS data in particular is very good.

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett
 
That is good, because there aren't many good benchmarks, especially ones that match directly to ROR and go straight from a raw string, so it's good to get a lot of those. I know that the French company that we're working with right now, SIRIS Academic, they have also created some datasets and some benchmarks specifically for French institutions, and they have an easy dataset and a hard dataset, so that's something that we're going to be looking at.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Avatar of Amanda French" >}} Amanda French
 
Thank you so much for your time, Justin.  

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Avatar of Adam Buttrick" >}} Adam Buttrick
 
I am probably the most excited about this interview, of all the readers!

### {{< figure src="/img/blog/openalex/justin_barrett.png" class="round-figure" alt="Avatar of Justin Barrett" >}} Justin Barrett

Thank you very much.

{{< callout color="green" icon="no-icon" >}}

Questions? Want to be featured in a ROR case study? Contact <support@ror.org>.

{{< /callout >}}
