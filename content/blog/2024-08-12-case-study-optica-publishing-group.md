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
  
We did retain examples with ISNI and Ringgold, because you have to include those.

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

We're using them for prospective business arrangements. Sometimes it's with a single university, sometimes it's with a consortium, sometimes it's with a whole country for read-and-publish deals or publish-only deals. In those deals, when you're discussing the details, it's very important to know the historical counts of authors who have written articles through Optica Publishing Group, because those counts determine the basis for the amount of the deal. 

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

I want to elaborate a little bit on one of the use cases that Chris mentioned, which is the case where we do already use RORs for funding purposes. Specifically, as far as open access is concerned, there are basically two business models. Either it's a funder who pays for open access or it is an institution that pays for open access. And when the institution pays, that has two kinds of variations. The first is a read-and-publish deal with a consortium of institutions or a particular institution that pays for open access, and there are certain restrictions on the authors affiliated with that institution, but they will pay for open access if it is in our case the corresponding author. The second variation is a so-called "publish-only deal" which of course can apply to hybrid journals, subscription journals that might have certain open access articles. If you are talking open access journals, then it's a publish only-deal where the institution with which the corresponding author is affiliated will pay for open access. 

And basically in both cases, it is an institution rather than a funder that pays for the open access, and that is implemented based on the ROR for the institution. We have already implemented that, and thanks to Chris's efforts, we have this very strict one-to-one correspondence between an institution and a ROR ID. If the ROR ID belongs to a particular read-and-publish deal, then we send the information to RightsLink, which is a Copyright Clearance Center service, and they clear it with the institution, and then the publisher gets paid. 

To make sure everything is correct, I use Schematron to say, "Okay, this is the institution, it has to have this ROR ID." And if they don't match, there is a quality control option to reconcile them if the institution name is not what it is supposed to be, if it is one of those variations. And thanks to the ROR registry, we know what the variations are. They're all accounted for, and then everything is good. So basically, we have an additional QC step to make sure that those ROR IDs are for those consortia or whatever else. That is a real use case where we do already use ROR IDs for those read-and-publish or publish-only deals. Basically, that's the situation when it is the institution that pays for open access. 

And of course, as Chris said, we can use this data, the overall data, to know which institutions have published with us but don't have a deal with us yet. Or maybe the deal is renegotiated, because we're paid for this number of authors, but many more have published with us, so maybe we need to renegotiate the terms. That is very important from the business point of view.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yes. I'm curious about RightsLink. Do they accept ROR IDs as an input, or do they only accept names?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

Both. We can specify three different identifier types to verify if an accepted manuscript is a match on the RightsLink side. It's the name, the ROR ID, or the email domain. Or more than one if needed. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Interesting! 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello  

We're giving them the ROR ID and the ROR name. If there's a submitted manuscript that comes in from a region that we may have a deal with, where the author didn't choose a ROR value when they submitted, then I get an alert. And I'll go and manually match it,  which I can do in our internal submission or production system. It happens pretty often. 

Now, that doesn't mean they're part of the deal, but they're from an area where they might be, right? I have configured the system to get alerts for certain areas, and, worst-case scenario, they are not part of the deal, and now we just have one more matched ROR in our data. And if I had more time, I'd go to every single paper that wasn't matched and do that, but that's not on my radar right now. We certainly could do that, because the ROR API is very helpful in that regard with the autofill and the drop down, and now we have the related organizations, so it's really a very useful tool just for matching purposes.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
That's great. The other thing that I'm really curious about, and I don't know if you know this, but Optica Publishing Group is one of the top contributors of ROR IDs in DOI metadata to Crossref. We haven't yet talked about the fact that you're doing that, that you're making sure to include author affiliations with ROR IDs in Crossref metadata. Can you tell me a little bit more about why and how you do that?

{{< figure src="/img/blog/optica/optica-crossref-prep.png" alt="Optica Publishing Group's Crossref Participation Report showing 59% of their current content has ROR IDs" caption="[Optica Publishing Group's Crossref Participation Report](https://www.crossref.org/members/prep/285) showing that 59% of their current journal articles include ROR IDs" class="blog-figure">}}

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
 
I can say why. It's because the culture of the organization, and my responsibility in particular, is to make sure that all the metadata has integrity and quality. **We want to be good citizens of our publishing community and contribute as much metadata as possible, as much *correct* metadata as possible, to Crossref as an exchange mechanism among publishers.** We try to be as accurate as we can, and we don't see why we wouldn't contribute this data, since it goes through the rigorous quality control that Chris has described as well as though other processes to make sure our persistent identifiers are correct. And that's why. 

As far as how it is done, we have a process called fulfillment. A colleague of ours, Jennifer Mayfield, is in charge of that, and she makes sure that everything goes to Crossref. If there are any problems, Crossref reports them, and then we make sure that everything is clear. Several months ago, we just switched to the latest Crossref deposit schema, schema 5.2. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
And I would imagine that you are probably doing XML registration with Crossref?

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
Yes, definitely. We use a subset of JATS and then we transform it to the XML that Crossref accepts. We have basically an XML shop. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
What's next for you with ROR? I think you're working on cleaning up your funder data and matching that to ROR IDs?

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
I'll start with describing what we do currently, and then it will become clearer what we will need to do and how ROR will play into that. Currently, we use the Open Funder Registry to assign DOIs to the funders. And the way we do it is we traverse the registry from top to bottom, and we have three big categories of funders: those who require a CC BY license, those who participate in CHORUS, and the rest -- those who are frequent funders of optics and photonics research. We want to make sure we capture those. 

Now, we have a list of top ancestors in each category, right? It changes from time to time, because we learn that a certain funder now requires a CC BY license, for example, or that it is no longer participating in CHORUS. And depending on those three categories I mentioned, the license information will be different. Now, each of those funders has descendants, sometimes a lot of descendants. And if, let's say, an ancestor requires a CC BY license, then all its descendants require a CC BY license as well. So what we have to do is every time a new release of the Open Funder Registry comes out, we traverse the registry, and we find all the descendants in each of those three categories. And some of them are quite dynamic. For example, the United States Department of Defense has a lot of changes. In the United Kingdom, certain funders that are in the CC BY category, they also have quite a few changes over time. 

And then we have Schematron, it's a technology that we use, and we say, "All right, we found this funder." Of course, we've integrated the Open Funder Registry API into the submission system, so usually, the data that comes to us, the XML, already has those funder DOIs in them. However, sometimes an author doesn't find the match for a funder and just types something in that is not quite correct. And sometimes, during production, the author says, "Oh, I forgot, there is another funder," and then, of course, he or she will provide the name, but not necessarily the DOI. So, what we do, using in our case Schematron, we say, "Okay, this funder name has to match a DOI," and if there is no match, then I prompt the user to say "Okay, this is most likely the DOI" using the preferred label, basically the official name of the funder. And they have to reconcile that, because it's very important to have the correct license, such as a CC BY license, or to know if it's a CHORUS funder, and the embargo period may be different, and so on and so forth. 

Now, with the news that the Open Funder Registry is going to be sunset at some point, and we'll have ROR, the question for me in the coming months is "How can I either replicate this process or come up with a different process to do the same quality control that we need to do?" The first question is about coverage. Thanks to Chris, we have good data for many, many years of all the funders that have funded the research published in our articles. Are they all in ROR or not all of them? And we've been working with you to find the missing ones, because we cannot switch until a big portion of what we have there has a counterpart in ROR, until that coverage is there. 

But also, how do we manage the same process? How do we find those descendants? And what do we need to use? Do we use the ROR API, do we use the data dumps, which will I imagine be similar to the releases of the Funder Registry? They're very different data sources. The question for me in the coming months will be to explore the ROR registry to see whether to use the API or the data dumps and how to recreate or maybe invent the processes that allow us to have the same degree of control as we do right now with the Funder Registry.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Oh, that's exactly what I wanted to hear. We're hoping to work quite closely with you to make sure that all of the funders that you need to have in ROR are in ROR. We've had a little bit of correspondence with Chris about this. Fundamentally we're happy to add funders for you -- well, to review funders for you, not necessarily just add them wholesale, because they do have to be in scope for ROR. The last I checked, about 54% of Funder Registry records have equivalents in ROR, and those are the most used funders. We're continuing to go down the list to find less frequently used funders that we do need to create new records for in ROR or add to existing ROR records. 

The only system that I know of for sure that has completed the transition from the Funder Registry to ROR is Dryad, which of course is a repository, not a publisher. They were using the Funder Registry API to encourage authors to choose a funder when they were submitting their work, and they switched that over to the ROR API. And then a lot of the work that we did in conjunction with them was specifically on curation, on making sure that all Dryad's existing funders are in ROR. 

As I said, we're happy to work with you, Chris: you can send us more spreadsheets anytime of funders that you'd like to add to ROR. We do of course have other large scale curation projects that we're doing, so it will always take us some time to review them all, but we're absolutely happy to look at that. 
  
We've been talking with CHORUS, as well, and they are also in the process of building ROR into their workflows. They've got it in some of their dashboards and in their public API. And on the recent Crossref community call, Crossref emphasized that they're really prioritizing accepting ROR IDs in the schema where they currently accept Funder IDs.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
By the way, this is in Chris's purview, but we have years and years and years of data about funding based on the DOIs of those funders, and then when we switch, there will be years and years of data based on ROR. And I wonder if we need to have business intelligence covering the range of years whether we will have to account for two identifiers for the same funder, which may or may not be a challenge.

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

I'm not sure. I mean, it's pretty straightforward to look for one and then the other if the first one was missing. But as far as my part in this effort, we have about 13,000 different funder names, and maybe half of them have a DOI. And we're focusing on the ones that have a DOI for now, and of those 6000 or so that have a DOI, I've matched about 4500 of them. Most of them not manually: I was able to find a match through the DOI in ROR or through a name match. I was only able to manually match a couple hundred of those so far, but I haven't spent a lot of time on that part of it yet. The remaining 1400 or so I will probably match manually through the year. And the ones that don't have a DOI we may never match. I don't know. We'll just have to see. It's just very time consuming to match it that way. Maybe we apply a fuzzy match to it, if someone requests some kind of high level reporting.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Also, we are working on an additional service to match names to ROR IDs. We're doing that in conjunction with Crossref. Our API, as you've mentioned, Chris, does do a good job of matching, but we're looking at developing a matching service that will do an even better job of that. One question I'd love to ask, and we've touched on this already, is what do you hope ROR does in the future? What problems could we fix for you, or what changes could we make that would make your lives easier?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

There's all kinds of things I'd like, but they're not reasonable! So, for example, just better tools for matching would be great. But yeah, perhaps a mechanism to take in verified matches from me and others to use as training data for some kind of machine learning tool. We've dabbled in that a little bit, internally, and the results were not good, so it may be a non starter. I'm assuming that it won't be a non starter forever; if the AI is not up for the challenge now, I'm sure it will be soon enough. That might be something to pursue down the line, because I can give you I don't know how many matches I've done. Five thousand? There might be a mistake in there, but I've looked at each one. It could be a basis for all kinds of matching down the line, perhaps.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
No, I think you're really right. We have done some of that with the American Physical Society. They also did a lot of heavy curation where you can be really sure that this particular variant of this name matches this ROR ID. We have a GitHub repository where we store both the code and the data for that matching service that I mentioned, and in the `test_data` folder, there are some datasets. The APS dataset has some verified matches that they have manually curated in the same way that you do. The Crossref publisher assertions are from the Crossref API where the publisher has asserted that this name matches this ROR ID. We think that's probably less reliable than one that was manually reviewed by the publisher. I'll have to see if we could use some additional datasets for that project or if it's too far along. 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

Sounds good. 

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
One particular challenge is Chinese funders. You have someone now, right, who deals with that? That's very good, because, you know, first of all, they change quite frequently, as any big bureaucratic organization does, but also because of translation. It's not always clear what the author specified or what the official name is and this and that. That is, I think, a particular challenge, to deal with Chinese funders.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Yes, we do have someone. As you know, in our May community call we had a presentation from Jackson Huang, who was a LEADING intern with us and is now a member of our Curation Board, and who is a native Chinese speaker who is working on that. I don't know that they're focusing specifically on funders; it's more like Chinese-language organizations in ROR generally. But it's great to have Jackson doing that. That's been a priority, and we know that it's really difficult. 

What else would you like to say about ROR, or about the Optica Publishing Group, or about metadata, or about anything at all?

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello   

I don't have anything else other than it's been a really great tool, and it's really helped our efforts, so we really appreciate that it exists.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
I'm looking forward to unifying the IDs for the funders and for affiliations. It does make sense. I realize it will be challenging, but in the long run, I think it's the right thing to do, especially given the fact that that ROR is actively and openly curated and there is an active user base. So I am looking forward to this development and to this challenge.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 
  
Wonderful. Yes. I'm glad to hear that. I think it's going to be very exciting to see everything that comes out of this. Than you both for taking the time to talk to me. 

### {{< figure src="/img/blog/optica/chris-iannicello.jpg" class="round-figure" alt="Chris Iannicello" >}} Chris Iannicello  

And we thank you so much.

### {{< figure src="/img/blog/optica/sasha-schwarzman.jpg" class="round-figure" alt="Sasha Schwarzman" >}} Sasha Schwarzman 
  
You bet, thanks very much.
 

{{% callout color="green" icon="no-icon" %}}

Questions? Want to be featured in a ROR case study? Contact <community@ror.org>.

{{% /callout %}} 



