+++ 
title = "HighWire Press's DigiCorePro and ROR" 
date = "2025-08-22T16:06:44-04:00"
draft = false 
tags = ["Highwire Press", "MPS", "DigiCorePro"] 
categories = ["Case Studies"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/" 
images = ['/img/blog/']
authors = ["Amanda French"] 
description = ""
doi = ""
crosspost = ""
+++ 

{{< figure src="/img/blog/" class="featured-figure" alt="" >}}

TKTKTK summary

{{< callout color="green" icon="no-icon" >}} 

"Our customers are asking for it. We're seeing ROR on Requests for Proposals (RFPs) as a requirement, especially now that it is being used at Crossref to identify funders."

– Tony Alves 

{{< /callout >}}

---

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Tell us about what made you decide to use ROR at HighWire, specifically in DigiCorePro.
 
{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
 
Sure. There were really a couple of different things. **One is that we want to accommodate as many industry-accepted processes and tools as we can, and ROR is of course extremely important now. ROR is really helpful, because it provides us with a standardized list of institutions that people can pick from rather than typing them in. And because ROR is free and open, we could implement it without having to pay anybody, which is really, really helpful.

**The second thing is that our customers are asking for it. We're seeing ROR on Requests for Proposals (RFPs) as a requirement, especially now that it is being used at Crossref to identify funders.** I like the fact that now there are fewer PIDs that we need to worry about. In those RFPs, people want ROR as not only an institution identifier for author affiliation, but they also want it as the funding PID. Also, of course, people are looking for Ringgold as an institutional identifier, but we can offer ROR to people who can't afford a more expensive persistent identifier.

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Great! You've touched on this a little bit, but how is ROR used in DigiCorePro?

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

It is used as the basis of a pick list when people are selecting their institution so at that institution level it's a typeahead, so you start typing, and you'll get the the ROR. 

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Do they see the ROR? 

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

They just see the institution name. They don't see an identifier.

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

That's actually what we recommend, so that's great. 

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

We capture the identifier when the institution name is selected, and so when the metadata is transmitted, if the API wants the ROR, then that will be there for the affiliation institution field. Authors can have multiple affiliations, too, so you would then have multiple ROR IDs for the different affiliations. We have also implemented it as an identifier for funders. 

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

That's great. 

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

In both cases, we do try to anticipate the institution when we extract the metadata and match it with the ROR ID. We do that when we can for both funding and the person's institutional affiliation. The person uploads their manuscript, and we then look through the manuscript for header information, pull that out, and present it as fields that are already filled in that they can change if need be to something that's correct. 

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Oh, that's interesting. It's great that you do that. I think that's a popular approach these days.

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

We want to make it as simple as possible. The funder information is hard because there's not a standard way of providing that information. People are still providing it in paragraph format somewhere, you know, even if you've asked for it in a certain place, right? So that's always a challenge. 

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

Those funding acknowledgements are very non-standardized. You mentioned that DigiCorePro transmits this metadata, including the ROR IDs, via an API. Where are some of the places that metadata might be transmitted to? 

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

Oh, there are all kinds of uses for our API. For example, it might go to a research integrity check tool, and depending on what data they want, the ROR and the affiliation information would be part of that. If there's a place in their schema for ROR, it would fit in there. If their schema has just a general institution field, the institution name would go in there. There are also systems like [Convey](https://www.convey.org/) that collect conflict of interest information. Convey was created by the [Association for American Medical Colleges](https://www.aamc.org/). We query Convey's database for conflict of interest information, so if ROR was part of that, it would be in that exchange.

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

I'll contact Convey to see if they use ROR or are planning to use ROR!

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves

It also might be [Prophy](https://www.prophy.com/) or [Global Campus](https://globalcampus.ai/) or [Reviewer Credits](https://www.reviewercredits.com/), any of these reviewer finding tools that might get the ROR IDs from the API.

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  

I know Prophy uses ROR quite heavily. 

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
you know, ORCID in an ORCID exchange, right? So we can pull in the ROR if it's in the ORCID record, or we can push the ROR out if somebody is establishing an ORCID record,

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
Yep, yeah. And I actually can't wait for the day when all of the organization and Funder identifiers in ORCID are ROR IDs. And I think that day is not too far away. They do plan to do it. And right now, the majority because ORCID does have a really nice implementation, where they have, they're using Funder IDs Ringgold and ROR, but increasingly they're standardizing on ROR. And I think eventually we'll do a kind of a backfill, so that everything that was associated with a Funder ID will then be associated with a writing that's really nice,

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
cool. And then if, anytime we need to push affiliation information and ROR is in the API, in the schema, then that's gonna, you know, that's what, that's what we'll do with the information. And

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
now DigiCorePro is not really because it's it involved in DOI registration at all

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
it can be if that's if they if that is like, so, yeah, I believe our bench press system is and so anything that bench press does will do DCP will be doing. So I do. I do believe that we, it may not be us specifically, but it would be our client that is pushing their article, their accepted articles for the for Crossref DOI, I, I, I'm, I'm a little fuzzy on that. Yeah,

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
we can figure that out most manuscript submission systems, don't, you know, do that, or at least not as far as i know i I'm not really.

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
I used to work for that, did do it that did have a mechanism for pushing data to for DOI assignment. But maybe I'm confusing that maybe

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
I'm sure you know more about this than I do, but most of the publishers that I talk to like they do XML. They'll get the XML for the DOI creation from the manuscript submission system, but they don't always, that's

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
right. So we're not going to be registering DOI is under our name. We're going to be we're going to be registering the DOI is under somebody else's name. So yes, it's, they're the ones that are pushing it. They might be, they might be pressing a button in our system, which then pushes the information.

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
Yeah, there's extra steps there. Is what I kind of am trying to stay Yeah, it's not like you just anyway, what? Yeah, I don't I always wish I could look in on the publishing process, beginning to end. Well, we'll cut all that out too. So let me add. At this how exactly like, what were the steps that you took to build ROR into DigiCorePro and like, what was the that development process like? Do you know?

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
Well, the, I mean the development process. I mean, we use an Agile process to develop the product itself. So they, you know, we part of, part of what we do is we look at how something is implemented in bench press, and we try to figure out what might be the better way to do it. But, I mean, I hate to, I don't want to, I don't want to throw too much shade on our own system, but we're looking at sort of, you know what, how it we're looking at how we've done things for publishers in the past. And we're examining what is what, how might it fit into a into a more modern, modularized system. And you know the I mean, specific to ROR, we unders? We understand that there are multiple ways of there. We have multiple there are multiple ways to use ROR, as I've been discussing, either in human, in a person's affiliation, or as as a funding ID. Or, you know that that there are, there are organizations that are going to want the ROR from us, or that the ROR is going to come from another organization to us. So, for example, if somebody is sending us some information about a person to then put them into our database. So, you know, we create all the stories that identify how those what all, how is ROR either going to get to us or be sent out? Where are we going to be using the ROR is in the workflow process, and then those get written into stories, and then those go into the development process as we develop the various features. But you know, IDs in general, persistent identifiers are always being considered in all the processes. Will there would? Will there be a persistent identifier needed in this process, in this interchange? Will, what will those persistent identifiers be, or might there be a persistent identifier in the future that we might want to be sure is included in the design of this feature or function. Those are very just general concepts. You know, we keep that in mind because, you know, we can see, just from our understanding of where the industry is going, that as different aspects of the manuscript could potentially have different persistent identifiers. And of course, you will, you know, as Crossref, you, of course, appreciate this concept since you, since you spearhead it, it all the time. So, you know, understanding that the reviewer, a reviewer understanding the organization that they're from, it's better to have the the ROR for that person than it is to have the name of the institution, because the reviewer doesn't get it right when they type it in. They just going to type in UMass or COVID So, you know, that's they, you know, they just can type that in. And you know what, we want to be able to be sure that if we are getting that review, that information about that reviewer, that you know, that that we have, that we that we have that consistent information. It also helps us to disambiguate people if we need to do that, because the ORCID is important for that. But sometimes if when we want, when we give a journal staff person an opportunity to look at multiple people records, if somebody has somehow gotten registered two or three times. ROR is one of those things that are going to help us to give them enough information to disambiguate and identify which you know which which records need to be merged. If that so, it's just an element of information. And similarly, with research integrity, you know, if, if there, if you have somebody who doesn't have an institution that is in a is in the war list, then potentially that may not be a real institution. I mean, we know that you don't cover all the institutions, necessarily, that sometimes new institutions come up. But, yeah, so those are, you know, those are some of the ways that we think about ROR in persistent identifiers in the development process. That you know, will it? Will it be something that will be a useful element in, in in this and what's great? Is because it's open source. We're not we don't have to constrain ourselves, similar to ORCIDs.

Speaker 2  
You know, it's the it's an open, open standard. Again,

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
I'm going to go off script, because I do find this fascinating, and I think you're a great person to ask this question, which is always on my mind, and you've alluded to it a little bit, but what in your mind is the business case for ROR?

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
That's a tough one, because it's hard with these open standards like, what's the business case of ORCID? Right? I mean, for for ORCID. What's the business case? It's a nonprofit. What is the for ROR? What is the, yeah,

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
I don't mean, I guess. I mean, like, for your not so much, like, okay, for using ROR, not for

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
that. We don't have pay for it, right?

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
That would be, that you'd think that would be stronger, stronger case than it is.

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
Yeah, because, you know, I mean, I can't. So I also appreciate Ringgold. I really do appreciate the coverage, in the curation, and the fact that you can actually, you know that there's hierarchy that causes complication. So ROR is nice and simple, right? It's pretty flat, it's easy to navigate, whereas Ringgold is the hierarchy makes it confusing. It's harder for people to use it. It's easier for people, for an author, to select from a ROR than it is for them to select from a Ringgold. So that, I mean, so the business case. But if you really do need for like E commerce, and you need you need to know that the specific department of a specific part of a specific university did something, then the Ringgold is going to be the more useful, right? Yeah, identifier, because that's the that's the use case. In E commerce, you need to be as specific as possible. But in affiliation, it's less important. So

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
I think that's really interesting, and who, I'm not sure how much of that will stay, and we try not to, but we actually really, usually recommend that people use both ROR and Ringgold. We try to say, like we are not trying to suggest that you stop using Ringgold if you are using it precisely because of that, because I think you've actually really articulated it really well. One

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
of the things that we that is, I don't know if we've gotten here yet in DCP, but one of the principles is that, yeah, the institution field can have a ROR, it can have a Ringgold, it can have an ISNI, and it potentially could have other things, you know. But that's, you know, it. But that institution where, because those are mapped for us already, we can map them together too, and in that way, it depending on who we're interacting with, if the particular third party requires ISNI, then we can send the ISNI, yep. So that's you know, that that's we. We need to look at it from, we need to look at it from a non proprietary perspective. We need to be agnostic in how we how we deal with the institution ID, because, you know, we want to be able to interact with any system. Yep, yeah. ROR is I

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
again, I put this probably won't make it into the published piece, but we do hear that ROR is better for those affiliation pick lists because it's not as complicated, and ROR is better for interoperability with other systems because it's open, so and free, so A lot of entities that we're not using any identifier beforehand, have adopted ROR, whereas for publishers, there are extremely good reasons for them not to abandon Ringgold in favor of ROR. And in fact, most of the publishers I talked to say that there or systems I talked to that are using Ringgold have simply started using ROR as well, rather than abandoning Ringgold for ROR, and we that's what we think. We think they should do. Cool, all right, so, so just last question we can just wrap up. Is there anything else you want to say about ROR?

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
well, I guess one of the things, and this is not specific to ROR so much, but I mean, I really appreciate the community around ROR and that the vibrancy of it. I think that is a lot of it's really, you know, I really liked the I've always enjoyed, PID uppalooza and. And, you know, it was really a great launching pad brought for ROR because, you know, in and it really, it really did. So, I mean, I do like that, that that part of the fact that ROR is community based and has an active advocacy group around it. The, I'm trying to think of something else that would actually be interesting to say.


{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
any, any, any feature requests or suggestions for future directions.

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Tony Alves
I No, I think that you know, from the, from the, from a systems perspective, being sure that your API is super responsive, like, like, like, in real time, responsive is really useful, because we can't stop the submission process and right, like when an author is there to submit. So I don't know if today we're downloading the if we're downloading it and using it locally, and then that means, that means we have to have a process by which we always remembering to make sure we have the most updated one that is, from our perspective, probably the safer implementation, because then if, like, the API goes down, then we're not dependent on that. So, but then we don't always have the most up to date information, and so that, you know, that's like a thing that's but that like, that's a struggle everybody has with these sorts of things when you're dependent on an API for an essential process, like identifying affiliation. So, so that's one thing that I think is an important part of your infrastructure to be sure is really stable. That's that would be one thing,

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
yeah, and we've had, we've had, I guess, a few, a few things we recommend, if possible, that you do download the data and store it locally for precisely the reason you mentioned that. Being said, the ROR API has been very, very stable. Um, it's had great uptime and all of that. But the third thing is that, because it is a totally free and open API, we're seeing more and more, I wouldn't say abuse of it, but just sort of people who are over using it a bit, and that's one of the reasons why we recently started this initiative to its client identification so that, like you just have to tell us who you are before you get the current rate limit. So we're phasing that in gradually, so that if somebody is using the API, API wrong, which makes it struggle for everybody else who's using it, we can contact you and say, Please stop. Whereas now we can't like the only thing we could do is block a particular IP and if we don't know what was going on, you know? And then sometimes they write us to say, why did you block our access? And sometimes they don't. So, yeah, it's the it's those three levels, like we recommend that you download it locally and do and ROR is quite a small data so a lot of people do do that. But two, we have been working on that API stability, which has been historically very good. But three, we're adding this extra layer, phasing it in over the course of the next year, year and a half, to where we can stop people from ruining it for everybody. That's

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French  
Thank you so much for talking with me, Tony. 

{{< figure src="/img/blog/digicorepro/tony-alves.jpg" class="round-figure" alt="Tony Alves" >}} Thanks so much. 

{{< callout icon="fa-envelope" >}} 
Write us at support@ror.org with any comments or questions.
{{< /callout >}} 