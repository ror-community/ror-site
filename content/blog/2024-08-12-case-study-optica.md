+++ 
title = "Case Study: Optica Publishing Group and ROR" 
date = "2024-08-08T11:55:27-04:00"
draft = false 
tags = ["Optica", "Interviews"] 
categories = ["Case Studies"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/optica/opticapg-logo.png" 
images = ['/img/blog/optica/opticapg-logo.png']
author = "Amanda French" 
description = "Optica Publishing Group was one of the earliest publishers to send ROR IDs to Crossref in DOI metadata. In this interview, we speak with them to learn more about their rigorous processes for cleaning organization names."
+++ 

{{< figure src="/img/blog/optica/opticapg-logo.png" class="featured-figure" alt="Optica Publishing Group logo" >}}

Optica Publishing Group was one of the earliest publishers to send ROR IDs to Crossref in DOI metadata. In this interview, we speak with them to learn more about their rigorous processes for cleaning organization names.

{{% callout color="green" icon="no-icon" %}}

### Key quotations


{{% /callout %}}


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Chris and Sasha, can you tell me your names, titles, and organizations?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello

Chris Iannicello, Director of Business and Content Intelligence, Optica Publishing Group.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
My name is Sasha Schwarzman. My position is Content Technology Architect with the Optica Publishing Group.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Tell us about Optica Publishing Group. When was it founded, what does it do, and what makes it unique?

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
Optica, the scholarly society, was founded in 1916 and started publishing in 1917. Originally it was the Optical Society of America, and that name was in place for a long time. The society was renamed "Optica" in 2021 and its publishing arm was renamed "Optica Publishing Group."

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

The unit we work in, Optica Publishing Group, is basically in charge of publishing optics and photonics scientific journals and books. There's also an outreach program that's affiliated with the society, which is a nonprofit society, and that involves having meetings and conferences. The society also engages with young scholars to promote the field of optics and photonics. There's also some activity around getting involved with legislation in Congress about that affects scientific funding and scientific issues. 

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
Our particular department is called Publishing Production and Technology, so Chris and I are more on the technology side. In addition to publishing our own scientific journals, we publish partner journals such as those of the Korean Optical Society, the Korean Optical Society, the Chinese Optical Society, and IEEE. And as Chris mentioned, we work closely with the meetings department, and so a big part of what we do is also to publish proceedings of all of the meetings and conferences.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Wonderful. Do either of you have any sense of about how many journals and publications Optica Publishing Group produces?

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
I think 14 journals now, and as far as meetings and conferences, there are so many of them that I am not sure I can tell you those right now. And as I mentioned, we do make a distinction between the journals that we publish exclusively and  our partner journals. And I don't know if it's relevant, but we also went through an exercise of converting our journal content from 1916 through the 1970s, so some of those journals no longer exist, so they're historic journals, or they have been split into others that exist now. And conferences are a very dynamic thing, so some conferences disappear and no new ones appear, so the overall number of meetings and conferences is huge.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Gotcha. So when did you hear about ROR for the first time?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

A few years ago, I was attempting to standardize our affiliation data a little better -- clean it. And I came across GRID at that time, maybe three or four years ago. I started using GRID IDs informally in my own cleaning exercises against our affiliation data. And by affiliation data, I mean both author institutions and also institutions that subscribe to our content. Both those lists require different degrees of cleaning. The author institution data especially requires a great deal of cleaning. Then I heard the news that GRID was being sunset, and I started learning about ROR. So about two years ago, I really started to use ROR exclusively, once I knew GRID was going away. 

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
I think I heard about the ROR system four years ago and I believe it was a JATS-Con conference I attended. Unfortunately, this year it's not taking place, but at JATS-Con there's always talk about persistent identifiers. When ROR came along, of course, there was an announcement, and then there was, I think, a presentation from the ROR folks. And ever since, it has been on my radar. Then when Crossref announced that the Funder Registry is going to be sunset, that really caught my attention. Also, I'm on the JATS4R author and affiliations group, and very soon we will release version 2 of our author and affiliation recommendations. And as part of those discussions, **we talk a great deal about ROR being probably the dominant identifier for affiliations in the near future.**

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Ah, yes, I'm so glad you mentioned that, because we have looked at the JATS4R proposals about affiliations during the open comment period, and they looked good to us, so we're pleased to know that ROR is such a key part of that. I think we didn't leave any comments, because we were just pleased with them as they were. 

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
We did retain examples with ISNI and Ringgold, because you have to be inclusive.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yes. Understandable. Chris, you mentioned that you were using first GRID and then ROR in your cleaning projects for both author affiliations and institutional subscribers. I'm curious about what that cleaning involves and why it's important.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

The second question is a lot shorter to answer than the first, so I'm going to give the answer to the second question first, which is, **the messier the data, the more we need ROR.** For years, when we accepted submissions for manuscripts, which may or may not become a published article, the author could submit what institution, college, university, or laboratory they're affiliated with. It was a free-form field, and they could put as much text as they want. So we have data that may mention the university in it, but it also has the address, the PO box, the phone number, and it's one piece of metadata, it's not split up in our database. So the value of ROR to us is just to standardize the identity of all these places. We may have hundreds of different permutations of the same institution. To me, that's the big value: to have some kind of way to sanity-check the information we have internally. 

Of course, as time goes on, the information we're asking for now is cleaner, because not only have we required cleaner data, but we've also integrated the ROR API so that authors can choose a ROR affiliation when they submit, although not a large percentage is doing that to date. 

The answer to the first question about the cleaning process is that it's a very involved process where I take that metadata that I mentioned, which has a lot of information, and I attempt to extract the university or the laboratory or the the part of the metadata that is actually saying what the institution or affiliation is. And that is a multi-step cleaning process has nothing to do with ROR: it just has to do with delimiting our data to the point where I can find the best possible part of the metadata of that might be an institution. Once I do that, I take that list and I put it against the ROR data. Sometimes I'll get a one-to-one text match, and then I put it over there, it's done: I don't look at it ever again, it's a match. If it's not a one-to-one text match, then I run it against your API, line by line. And then I review those results manually.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Which is fantastic, by the way. Not everybody does that.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

Well, it depends on who you ask!  While I'm doing it it's not so fantastic.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Well, I'm sure it's not fun for you! But what I'm saying is that a lot of people do not take that extra step of getting to that level of quality. And I have to say, too, you're by no means alone in having accepted affiliations as text strings for so long. I mean, I think that's an endemic problem in publishing that for many years, even after the move to digital, people had a free-text field for that kind of data. 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

When I get to the point of manual review, I have the cleaned affiliation string from our data, and the first thing I'll do is see if there's a URL involved, because that's a much cleaner way to do it, since you don't have to worry about permutations of names and the URL changes a lot less often than the name does. If that doesn't work, then I'll just start Googling the name until I find something that looks like it has a ROR ID. 

In that process, I'm searching the harvested ROR data that I have taken from your data dump, which I put into a business intelligence tool called Tableau, and I've included the hierarchy data, which helps. I try to run it up to the highest parent in the hierarchy chain when I assign the ROR ID or name. Sometimes I'm not able to do that, just because it's too time-consuming. I have a mechanism where you can see the child or the parent: you can toggle between the two, so if you want to see lower numbers, more bundled, you toggle to the parent for things like article counts and author accounts. The granularity might not be perfect, because I only have two data points, the institution I found a match for and its respective parent, no matter how many generations it is up the chain to that parent. I don't specify that. 

Once I do all that, then I can start reporting on the data and presenting it to stakeholders internally. I give them the choice between looking at the ROR ID or looking at the raw strings in the same row broken out if they ask for it, which obviously makes it a much longer report. Basically, those are the major steps.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
I see. 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

I don't do any automated matching, because the information we're using this for is too important. We're not doing broad trending with this data. We're doing reports that require very specific article counts, author affiliations, and articles per author affiliation per year. We need exact numbers or as close as we can get to it. I've been on the webinars you've run about automatic matching, and I've heard all the techniques people are using, and they're great, and I understand why they're doing well. But we just have to trust the data 100% for our use cases.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
What are those use cases? In other words, what's the purpose of your reports? 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

We're using them for prospective business arrangements. Sometimes it's with a single university, sometimes it's with a consortium, sometimes it's with a whole country for read and publish deals or publish-only deals. In those deals, when you're discussing the details, it's very important to know the historical counts of authors who have written articles through Optica Publishing Group, because those counts determine the basis for the amount of the deal. 

If you're not far along in the negotiation process, you may just want an order of magnitude, so you can do a quick keyword search of affiliations that may have more than one name. Now that might be done against ROR data, or that might be done against our clean affiliation data, or it might be both. That's more informal. When you get to the point of finalizing a deal, then it gets formal, and that's when exact counts become so important. 

But we also want to apply ROR against our internal customer data, against all of the Optica society members, all of whom have affiliation data. That data has never to my knowledge been cleaned for reporting purposes. If we take a cross-section of all our members, what are the ten leading affiliations that they're from? I've run the ROR API against those lists, and I've taken fuzzy matches on that, and in the reports I've specified that these are fuzzy. You know, maybe one-tenth of them are clean. I've set up the reports so you can toggle between the fuzzy matches and the clean matches, so you can remove the fuzzy matches from the report completely, and then you're only looking at the ones that I manually checked. It's a toggle that says, "manually checked" or "fuzzy match." And I uncheck the fuzzy match by default, because I know it's risky to report that. And if they just want to see general trends, they can do that. 

A related use case for that data is to try to identify organizations that have a lot of authors who publish articles with us but do not subscribe to our content.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
That's a great use case, of course, because it's not even just a business opportunity, like "Hey, maybe you should subscribe." That's good for research, because if those researchers are publishing in your journals, then they probably want to be reading them as well.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

Yes, that's the whole sales pitch. Researchers from your institution have published thirty articles in the past two years in our journals, but if they go to read them in your libraries, they can't get to them, or at least not to the non-open access ones, anyway. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Right. 

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 

I want to elaborate a little bit on one of the use cases that Chris mentioned, which is the case where we do already use RORs for funding purposes. Specifically, as far as open access is concerned, there are basically two business models. Either it's a funder who pays for open access or it is an institution that pays for open access. And when the institution pays, that has two kinds of variations. The first is a Read and Publish deal with a consortium of institutions or a particular institution that pays for open access, and there are certain restrictions on the authors affiliated with that institution, but they will pay for open access if it is in our case the corresponding author. The second variation is a so-called "publish-only deal" which of course can apply to hybrid journals, subscription journals that might have certain open access articles. If you are talking open access journals, then it's a publish only-deal where the institution with which the corresponding author is affiliated will pay for open access. 

And basically in both cases, it is an institution rather than a funder that pays for the open access, and that is implemented based on the ROR for the institution. We have already implemented that, and thanks to Chris's efforts, we have this very strict one-to-one correspondence between an institution and a ROR ID. If the ROR ID belongs to a particular Read and Publish deal, then we send the information to RightsLink, which is a Copyright Clearance Center service, and they clear it with the institution, and then the publisher gets paid. 

So, to make sure everything is correct, I use Schematron to say, Okay, this is this institution, it has to have this ROR ID, Mendeley, if they don't, if they don't match, there is a quality control auction to reconcile them if it is already the institution name is not what is supposed to be one of those variations. And thanks to our our registry, we know what the variations are, they're all accounted for then all be then everything is good. So basically, we have an additional QC. Step two, make sure that our Ric is using the, you know, our RS or those consortia or whatever else. And so that is a real use case where we'll do already use our RS four. So those Syrian publishers do publish only deals. Basically the situation when is it institution that pays for open access. And of course, as Chris said, I mean, we can use this data, the overall data, like we know which institutions are the author athletes, which institution published with us, and they don't have the deal with them yet. Or maybe they negotiate a deal saying, Okay, you're paid for this number of authors, but many more try to have published results, maybe we need to renegotiate the deal. Maybe we need to increase this terms. Like they negotiate the terms of the deal. So that is very important from the business point of

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
view. Yes, yeah. I'm, I'm curious about RightsLink, to be honest, because how do they accept ROR IDs as an input? Or are they only mainly accepting the names?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
They both those so we can specify three different identifier types to verify. If a manuscript, an accepted manuscript is a match on the rights link side, it's, it's the name, the RR ID or the URL suffix. Were more than one if, if needed,

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
like the DOI. Oh, the URL suffix for the institution or for the right. Yeah, gotcha. A

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
bit of an email also, right? email,

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
email, like a domain. Domain. Excuse me, right? Yeah. Domain. Yeah, sure. Yeah.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Interesting. So wait, email id sorry, email, domain, web web domain ROR. ID and what was the other one, the or name is

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
the name, but we're giving them the rRNA. Right. So if there's a submitted manuscript that comes in from a region that we have a, we may have a deal with, that does not that where the author didn't choose an RR value, when they submit it, then I get an alert. And I'll go and manually match it. Which I can do in our internal submission or production system. It happens pretty often. Now, that doesn't mean they're part of the deal. But they're from an area where they might be, right. So I have certain areas where I have configured it to get alerts, and, and worst case scenarios that are not part of the deal. And now we just have one more matched RLR in our data. Right? And if I had more time, I go to every single paper that was matched and do that, but I'm not. It's not on my radar right now. Right? And we certainly we certainly could do that. Because the API is very helpful in that regard with the, the, you know, the autofill and the drop down, and now we have the, the related ones. So it's really very useful tool just for matching purposes.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
That's great. At some point, maybe, in the follow up, as I'm producing the blog post, I'd love to see a screenshot of that if you can, or something like that. So yeah.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
So while we're talking about this, this all has to be cleared. I have no idea. Yeah. Supposed to be even be talking about reading published deals publicly.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Oh, well, yeah. Well, you

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
put together I'm going to be sending up the chain and you a can decide I'm just letting him Don't you know that as I'm telling you these things, I usually don't talk about these things, right with anyone outside the company, because it's our business dealings. So that I'm just warning you that part of the discussion might get completely wiped, that's

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
actually very typical. And so so obviously, every organization is different, but Rockefeller University Press also uses ROR IDs for to manage read and publish deals. And so they they have talked about that and have shown screenshots of that. And of course, you know, you may have may have other desires, but But yes, also the having other people at your organization read and approve this before it gets published. Very common. Not a problem at all. So yeah. No worries at all.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
I have a colleague from Rockefeller's Ramadan, who will talk with him about those things on the agenda is just for, you know, think, but um, yeah, so, yeah, it doesn't air so to speak.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yeah. And, you know, you can keep it very general. I mean, like, the fact that you're using ROR IDs to, you know, manage read and publish agreements. I would, I would hope, but, you know, it's would be okay to say but you aren't your absolute control over that.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
Well, but we'll see. Yeah.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Okay, well, I had a cut so so the other thing that I'm really curious about and I don't know if you you know this but um, optika is one of the top contributors of ROR IDs in DOI metadata to Crossref. So we haven't actually talked about the fact that you're that you're doing that, that you are making sure to put those author affiliations with the ROR IDs into DOI metadata for Crossref. Can you tell me a little bit more about why and how you do that?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
That might be on sash, I really don't know, such. And if you don't know, we'd have to probably talk to Scott about that.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
Well, I can say about why. Because an eye on the culture of the organization, and my responsibility, in particular, is to make sure that all the metadata has integrity and quality. And we want to be like a good good citizens of our publishing community, and contribute as much metadata, correct metadata as possible to Crossref as an exchange mechanism, in the mouth, among publishers. So we try to be as accurate as we can. And we don't see why not to contribute this data if it went through a rigorous quality control, as Chris has described, and other things that we do to make sure our persistent identifiers are correct. And that's, that's why, as far as how it is done, we have a process called fulfillment. We call it fulfillment, where a colleague of ours, Jennifer Mayfield, is in charge of that. And she makes sure that everything goes to Crossref. And if there are any problems, so Crossref, a person back. And then we make sure that everything is clear, because sometimes Crossref changes. It's like deposit schema and the mechanism. So we have just, I believe, several months ago, switched to the latest deposit, schema, 5.2 and B, just try to do it. And as far as like details of how it is done, maybe it's better to talk to Gen Con.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
I think y is probably the most important part of that. So yeah, and I would imagine that you probably are doing XML registration with Crossref. Yes, it was definitely that there's plenty plenty of information.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
Maybe we use a subset of jets, puzzle taking and tax hat, and then we transform it to the other XML that Crossref accepts. And that's what we do. Because we have a an XML shop. Right?

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yep. That's what I think. So, um, what do you think? Um, what do you think is next for you? With ROR? Specifically, maybe in terms of war for funders? Like, are you planning to do anything else with ROR? Are you it sounds like you're working on cleaning up your funder data and matching that to ROR IDs?

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
Well, let me start, and then Chris will Yeah, no, I think it's real hard to say much more. So, I will start with describing what we do currently. And then it will become clearer what we will need to do and how ROR will lay play into that. So currently, we use or open funder registry to assign DOI to the funders. Right? And the way we do it is we traverse the registry from top to bottom. And we have three big categories of funders, those who require a CC by license, those who participate in chorus and those, the rest, I mean, so and others who are frequent funders of the optics and photonics research, and you want to make sure we capture those. Now, we have a list of top or ancestors in each category. Write that and it changes from time to time because we learn that a certain amount of it now requires a CC by license, for example, or it doesn't want to participate in course. And depending on those three categories, the license information will be different. Now, each of those funders has descendants, sometimes a lot of descendants. And if, let's say, an ancestor requires a CC by license, then all its descendants require CC by license as well. So we have what we want what we have to do. Every time a new release of the open font registry comes out. We traverse the registry, we find all the descendants in each of those three categories. And some of them are quite dynamic. For example, the United States Department of Defense has a lot of changes in its in the United Kingdom. certain quantities that are in the CC by category, they also have quite a few changes over time, right? And then we have Schematron. It's our technology technology that we use that we use. And we say, alright, we found this funding funder. Of course, we integrated the open funder registry API into the submission system. So usually, the data that comes to us is ORCID, long in the XML already has those audios in them. However, sometimes author doesn't find the match and just type something, which is not quite, you know, correct. Not not not the it's not exactly image. Sometimes. During production. The author says, Oh, I forgot, there is another font, and that, of course, he or she will provide the name, but not necessarily DOI. So, what we do in even, in our case, Schematron, they say, Okay, this DOI has two majors founder, this founder named customisations UI, and is there is no mage, well, the I prompt the user, okay, this is most likely the DOI, this is most likely to occur. Because a preferred label, basically the official name. And or they have to reconcile that because it's very important to first of all have a correct license, CC by license or a course. Founder, because the period of time the embargo period may be different, and so on and so forth. Okay, very, now, we get this news that open from the registry is going to be written I mean, it'll sunset at some point, we will have our archives. Okay. So the question for me right now, not right now, but in the current month, is, okay, how can I either replicate this process or come up with a different process to do the same quality control that we need to do? So the first question is about coverage? Right? Are the sense the Chris, we have good data for many, many years of all the funders that have been published from having, you know, Congress for our, our, for the research published in the articles? Are they all in a row or not all of them? And this has been working with the zero to find the missing ones, because we cannot switch until the big portion of what we have there is a counterpart in RR so that the coverage covers things. But also, how do we manage the same process? How do we find those descendants? And what do we need to use? Do a user API who uses a data dumps? Or which will I imagine be similar to the releases of the registry? That's a very different very different data sources. For many, many organizations that do have this and don't have the center center funders there I noticed the horizons in the RR invoice. The version. So the question for me in the coming months will be to explore the registry to see whether the user API or data dumps and how to read, create, or maybe invent the processes that allow us for the same degree of policy control, as we do right now is the registry.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Oh, that's, that's, that's exactly what I wanted to hear, ya know, and, and the, so we were hoping to work quite closely with you make sure that all of the funders that you need to have in ROR are in ROR. Like I said, we we've had a little bit of correspondence with Chris about this. We're, fundamentally we're happy to add well review, not necessarily add wholesale, because they do have to be in scope for ROR. But But yeah, we have the last I checked, about roughly half, I think it was like 54% or something like that of the funder registry, have equivalents in ROR. Um, and those are the most used funders. And so we're continuing to go down to say, here are some lesser used funders that we do need to either create in war or just add to existing ROR IDs. The only system that I know of for sure that has completed this transition from they were using the funder registry, and they've switched over to ROR is Dryad, which of course is a repository more than a funder. But they had, they were essentially using the funder registry API, I think, to encourage authors to choose a funder when they were submitting their work. And switching that over to the ROR API was, you know, not nothing but not too difficult, because it was just like, here's one API, here's another API, that was fine. The A lot of the work that we did in conjunction with them was specifically on curation, let's make sure that all of those funders are in war. So So I think, like I said, we're happy to work with you, Chris, you can send us more spreadsheets, anytime of funders that Aven and ROR. Now, we can't like sort of just immediately do it. You know, we've sometimes have other large scale curation projects that we're doing. Sometimes it may take us some time to, to review them all. But we're absolutely happy to look at that. But yeah, you know, you may want to you wind up using the ROR data dump instead of the ROR API. The ROR API is updated more frequently than the funder registry. And then I'm I'm not quite sure. Can you explain again, what you were saying about CC by licensing? Did you mean that like certain funders require CC BY licenses on the works that they fund? Yes, that what you meant, okay. On

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
the article, or the article, and the article based on the volumes, I just write you Yep. So uh, yes, sir, is number number of funders who do require a CC by license? And of course, it's a requirement, they have to fulfill it. And yes, yes. And, of course, the course. Also, the chorus has an implication for the important embargoes in GRID Crossref. It's an embargo thing. Louisa, or think so? Yeah. And, of course, so. Yeah, yeah.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
And we've been talking with chorus as well. And they are also in the process of building war into their workflows. They've got it in some aspects of some dashboards and some, you know, not others. So they're, they're working on that. And then, actually, I've just on the Crossref community call this morning, and they were talking about how they're really prioritizing, accepting ROR IDs in the schema where they currently accept funder IDs and making it you know that that's a big, that's going to be a big thing for Crossref. And of course, that may not, you know, help everything that you're talking about, but it's there. They're definitely working on supporting ROR IDs for funders, quite actively. And I suspect that I suspect that the funder registry API, and certainly the downloadable datasets and so on, I suspect they will be around for a long time.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
By the way, I believe I mean, it's in the Christmas earlier, but I believe I wonder, okay, there is years and years and years of data, the foreign funder funding based on the eyes of those funders, and then when we switch, there will be years and years of data based on RR. And if we need to have business intelligence covered covering the range of years, then we will have to account for two identifiers for the same punter, which may or may not be a challenge.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
Yeah, and I don't I'm not sure. I mean, he, it's pretty straightforward to look for one than the other if the other if the first one was missing. Okay, good. But as far as my part in this in this effort, we have a header no 13,000 Different funder names, and maybe half of them have a DOI. And we're focusing on the ones that have a DUI, or now, and of those 6000 or so that have a DUI, I've matched already 500 of them or something, most of the most of them, not mainly most of them, I was able to find a match to the DOI, and RR or through a name match. I was only be able to manually match a couple 100 of those so far, but I haven't spent a lot of time on that part of the yet. So the remaining 1400 Or so I will probably match manually through the year. And the ones that haven't don't ever dry, we may never match. I don't know, we'll just have to see it's just very time consuming to match it that way. Maybe we apply a fuzzy match to it. If someone requests some kind of high level wording.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yeah. And we are I actually it looks to me as though in. That doesn't look to me, like Adam mentioned this in his last email to you, Chris. But we are working on a kind of an additional sort of standalone matching service for names to ROR IDs. We're kind of building that in conjunction with Crossref. And honestly, I haven't heard about a it's come a long way. I don't know when they're planning to launch it or anything like that. I think that's still up in the air. But But that, you know, our API, as you've mentioned, Chris does can do a good job of matching everything it doesn't. It is wise not to rely on that just to throw things at it and just say that, you know, you're good there, but it does quite a good job. But, but they're building one that will do an even better job of that. So we're hoping that that will hopefully get so you know, you never know you may want to take those those 6000 names that have no funder DIYs attached to them, throw them against a ROR ID and see if you can match them to a ROR ID. But we'll see. We'll see. So, oh, gosh, it's almost three. Um, one question I'd love to ask, and we've touched on this already is what do you hope ROR does in the future? What problems could we fix for you? Or changes could we make that would make your lives easier?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
I there's all kinds of things I'd like but they're not reasonable. So for example, if you say just better tools for matching would be great. But yeah, perhaps a mechanism to take in verified matches from me and others use as a training tool to train you know, through some kind of machine learning. We've We've dabbled in that we've dabbled with that a little bit, internally, and the results were not good. So it may be a non starter. Now, I'm assuming that it won't be a non starter forever if the AI is not up for the challenge now, I'm sure it will be soon enough. But that might be something to pursue down the line because I can give you I don't know how many matches I've done 5000 That? Sure there might be a mistake in there. But I looked at each one. I mean, looked at it. And that stuff. It should be a basis for could be a basis for all kinds of matching down the line perhaps.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
No, I think you're really right and we We have, we do have some of that, but not not sort of taken in, I guess in an automatic way or in a, what we've done is we, we actually did a similar thing with the American Physical Society. So they also did a lot of heavily curated matches where you can be really sure that you know, is like we have verified this string. This particular variant of this name matches this ROR ID. So the link that I put in the chat is to a GitHub repository where we've started, this is actually where some of the stuff that we're working on for the better matching service that I mentioned is, and in the test data folder, there are, I guess, four datasets. The APS one is the one I was mentioning from the American Physical Society that has some verified matches that they have manually curated in the same way that you do. The Crossref publisher assertions are from it's from the Crossref API, but where the publisher has asserted that this name matches this ROR ID, right. So presumably, it so we think that that may be a bit less reliable than the one that was really manually reviewed, those were manually reviewed by the publisher at some point, we assumed but it's, it's a couple of degrees away. The Springer one similarly, Springer nature was doing some some of that manual review. So these are meant to be exactly what we were talking about, like test sets and training sets for these these matching services. So I'll have to talk to Adam, he's, he's on a, he's out for a little bit here. And we did have that email thing, but we should, especially we could see if they're accepting additional datasets for this, because I can imagine that these optika datasets would be another useful addition to this.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
Sorry, yeah. Okay. Sounds good. So

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
I think, in particular challenges Chinese, Czech founders, because I mean, you're you have someone now, right, who deals with that. And that's very good. Because, you know, first of all, they change quite frequently from time to time as any big bureaucratic, you know, organization does. But also because of translations. It's not always clear either to want to ask the old what the author specified, it is, more the official name is and this and that. So that is, I will think, a particular challenge to deal with those Chinese. By me, not so much Japanese, I think there's more orders out. But Chinese founders is quite a big critic.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yes, and we do. You know, in our most recent community call, we had a presentation from somebody who was an intern with us and is now a member of our curation Board, who is a native Chinese speaker who is working on that, although I don't know that they're focusing specifically on funders. It's just more like Chinese Chinese language organizations in ROR. But it's great to have that person, single person. They can please, yeah, that's been a priority, we know that it's really difficult. Great, good to know, what else would you like to say about ROR? Or about the optical Publishing Group or about metadata or about anything at all?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   
Um, I don't have any details other than it's, it's really been really great tool. And it's really helped our efforts. So we really appreciate that it exists.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
And I'm looking forward to unifying the ideas for the founders. And for affiliations. It may it doesn't make sense. I realize it will be challenging. But in the long run, I think it's the right thing to do, especially given the fact that the RR is actively curated. There is a active user base. And it's not like this open on the register that is kind of black box that Elsevier maintains. Not very, not very well, I'm sorry to say. And so I am looking forward to this development and to this challenge.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Wonderful. Yes. They're glad to hear that. I think it's going to be very, very exciting to see everything that comes out of this and Well, thank you both for taking the time to talk to me. 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello  

And we thank you so much.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
You bet, thanks very much.
 

{{% callout color="green" icon="no-icon" %}}

Questions? Want to be featured in a ROR case study? Contact <community@ror.org>.

{{% /callout %}} 



