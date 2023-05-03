+++
title = "Case Study: ROR in DataSalon's MasterVision and PaperStack"
date = "2023-05-02"
draft = false
tags = ["Adoption", "Integrations", "Community", "Case Studies"]
categories = ["case-studies"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/blog/datasalon/datasalon-logo-image.png"
images = ['/img/blog/datasalon/datasalon-logo-image.png']
author = "Amanda French"
description = ""
+++

In January of 2022, DataSalon [announced a full integration of ROR](https://www.datasalon.com/web/downloads/press/PR_ROR.pdf) into its scholarly publishing analytics products MasterVision and PaperStack. DataSalon's Client Services Director Andy Dobson sat down with us to tell us all about how they draw on fifteen years of data experience to match organizational affiliations in publisher data to ROR IDs. 

{{% callout color="green" icon="no-icon" %}}

### Key quotations

"We're really interested in data standardization and cleansing: that's central to what we do, so we're all very aware of the importance of having a free and open standard reference dataset for identifying organizations and supporting some of the other datasets that get loaded into the system. That kind of open source data is key to our ethos." 

"And if you're then moving into OA, and you're not understanding a standardized picture of your customer hierarchy, and you don't know how many articles are coming out of the University of Oxford and how much they should be paying in article fees, then that becomes really tricky. I think there's quite significant financial implications on the customer service side by not having a dataset that allows you to clean up and standardize all of those customer pictures within your data."

"ROR does open up new possibilities for us, such as integrating some of the other systems that are around at the moment. We're currently looking at bringing OpenAlex IDs into PaperStack. That should be really straightforward, because you can use the ROR IDs to retrieve the OpenAlex IDs through their API."

-- Andy Dobson, Client Services Director, DataSalon

{{% /callout %}}



### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Thank you so much for agreeing to interview with us. Can we start by you telling us your name, title, and organization?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

I'm Andy Dobson. I'm the Client Services Director at [DataSalon](https://datasalon.com).

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Tell us about DataSalon.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

DataSalon's been going for a while now. It was originally set up in 2006 by Nick Andrews, who is our CEO, and Jon Monday, who is our technical director. They both were working together for a number of years on managing large-scale IT projects with publishers and retailers, so the company really came out of the work that they were doing in various sorts of projects, and from the needs and requirements of the publishers they were working with. 

The original product is [MasterVision](https://www.datasalon.com/web/products/mastervision_product_tour.htm), and that's really core to everything that we do here. Not only was it the product that gave the business its start originally, but it also became the basis for a lot of the services we provide, such as [PaperStack](https://www.datasalon.com/web/features/paperstack.htm), and data quality and assurance work, and projects we do around cleaning and standardizing data. From its launch, the MasterVision system was effectively adopted by OUP and BMJ to start off with, and they found it solving a significant business challenge for them, really, in a fraction of the time of conventional solutions, whether that be doing it in-house or looking at other, larger providers. 

We're quite a small company, and both OUP and BMJ are still clients after about fifteen years. We've got quite a long-term client base at DataSalon. People like us when they they start working with us, and they continue to work with us. We provide a very consultancy-based relationship, so we work with them to solve some of the data issues that they might have. As an organization, we're proud to be different. We solve a lot of the challenges around data cleansing, integration, analysis of data in a way that's significantly faster and cheaper and more flexible than conventional approaches. And as an organization we're quite small, but we're extremely agile, so we're very responsive in terms of customer service, and we've got a good understanding of the scholarly publishing industry. 

I've previously worked at Elsevier and Ingenta, and all of the staff have worked at various places within scholarly publishing at some point. So although we're kind of an IT company, we've very much got one foot inside scholarly publishing. The business itself came out of work that Jon and Nick were doing at OUP. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Right. And how many people at DataSalon, roughly? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

There are about 12, I think. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

That is small! 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yes, it's small. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

But mighty? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yes, small but mighty. Exactly. We like to think of ourselves as being a bit different, a bit innovative. We're a 4-day week employer, and we've always in the main worked from home. Even before the COVID days, staff have generally worked from home, so we're quite forward-thinking in that sense. 

We can touch on a couple of the other things as well as we go along, but I guess the key to our success is growing each client system directly from the source data that they load in rather than creating that through traditional time-consuming and expensive processes, we offer a very relaxed and intuitive way of working with the data and it's pretty much a custom process with the publisher. So right from the setup days of a given build of MasterVision or PaperStack we work with them to develop the tool alongside what they're requirements are based on their data. 

There are a lot of similarities, obviously, within scholarly publishing data. You know, typically it's subscriptions data, it's membership, it's usage, denials, etcetera -- all of those things that we're familiar with. But there are within that very individual requirements that they've got, so we work with each one as a separate customer to give them what they need.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Great. Can you tell us a little bit about first MasterVision and then PaperStack? What kinds of things do they provide for publishers?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

MasterVision was our first product, and what it's doing is providing publishers with complete customer insight. The interface itself is a standard interface across all of our clients, but each of those interfaces themselves have been tailored to their individual requirements. What it's doing is it's merging all of that customer data from different source systems into a single customer view. There wasn't anything really doing that at the time MasterVision was created, and I still don't think there is anything that offers that in quite the same way. 

We don't look to replace any of the source systems that those data live in. Publishers will still pick and choose the most effective systems that they want for fulfilling their needs: their platform hosts, their membership database, and their editorial scholarly article services. The integrity of that is kept within the publisher, and what we're doing is providing a read-only interface onto all of that data. So we're effectively joining up all the different instances of the given customer, whether that be an individual or institution, into a single record, and maintaining that customer hierarchy. It comes in really useful if you want to analyze things like "How many authors have you got submitting to your journal from a given institution?"

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

I can see why you would be interested in ROR, then. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yeah, exactly. Exactly. So having that having that reference record to tie customers to is really important, but also having the hierarchy of those customers is as important as well. It's predominantly a sales and marketing tool, so it allows customers to look for sales opportunities or to provide better customer service by understanding customers better. If you've got customer data in multiple datasets living in multiple systems, it's time-consuming to go in and query each of those. Whereas pulling all those together into a system that can't be broken by end users allows you then to see exactly what's going on on a customer basis within all of those different datasets. And it's really quick and simple answers, so rather than getting IT involved to run complex queries across multiple systems, the end user, even if they're non-technical, can do that themselves. You can put together quite complex queries with MasterVision: "Who does XYZ, and what are they not doing?" 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

It sounds like you anticipated data science before "data science" was really a term.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yeah, we've been doing this for quite a long time now. We feel like we were one of the first to really promote data quality and data cleansing. And as I say, the existing clients that we've got have stuck with us, which is good. 

Our other product, PaperStack, works on a similar basis. It's providing publishers with a complete reporting suite for their scholarly submissions: a fully integrated view into their peer review systems. Typically, that's ScholarOne and Editorial Manager. The idea behind that was really to provide a service with zero overhead in terms of effort on the publisher's part that shows a lot of detail about the submissions that are coming in to them. The interfaces that sit on top of scholarly submission systems aren't designed for analysis. What we're doing is providing a contextualized alternative view to that, so that the publishers that use ScholarOne or Editorial Manager can see the full picture of the data that's loaded in. 

And by "contextualized," I mean that we're using ROR data, Ringgold data, Funder Registry data, ORCIDs, publication information from Crossref, etcetera, for building out a comprehensive view of not only the timeline of a given article, but also all of the other big pieces of information: What are the affiliations of the authors and the editors? What is the hierarchy in terms of organizations they're affiliated with now? And maybe also in the past, so there's a historical picture of authors and submissions as well. And then we layer that with a set of standardized reports that publishers can use, as well as adding additional customized reports that they might want to design. So it just provides them with really detailed reporting of all their scholarly submissions.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

And do you think that's also primarily used by sales and marketing teams at publishers? Or does it have a different purpose?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

It's primarily editorial staff that use it, but there are applications for sales and marketing in terms of some of the reports that you could put together. Equally, it's kind of data-agnostic in that you could add in any customer data you wanted to it. Because it's based on MasterVision, that means that potentially users could load in usage and denials to get that context. alongside those submissions as well.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Great! I think I've got a sense of what they do now. Tell me, who were the primary advocates of implementing ROR at your organization?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

I would say pretty much all of us, from the customer service side to the product managers to technical. And Nick himself, our managing director. One of our product managers essentially managed the implementation, but the requirements from our clients meant that there was a lot of support and interest from all parts of the business, really, in getting it within the products that we use. **We're really interested in data standardization and cleansing: that's central to what we do, so we're all very aware of the importance of having a free and open standard reference dataset for identifying organizations and supporting some of the other datasets that get loaded into the system. That kind of open source data is key to our ethos.** 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

That's wonderful. You've mentioned the importance of a free and open dataset, and your products do use Ringgold as well, as you've mentioned. Can you talk a little bit about what ROR does that Ringgold doesn't? And vice versa, if you like, too: what does Ringgold do that ROR doesn't?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yes. Just to go back slightly: as an organization, we've always used a dataset for standardizing and linking academic institutions within MasterVision and PaperStack. It's key for what we do. And while that's not completely necessary for the products themselves, it does provide a underpinning of delivering a single customer view. And I suppose principally in the past we've always used Ringgold for those clients that license the Ringgold data. But there was always a chunk of clients that couldn't afford the Ringgold dataset or felt that it's overly heavy on some of the metadata and the hierarchical information, so as to be maybe not as useful or streamlined as perhaps they would like. Our client base is pretty much half and half, I would guess, between the people that used Ringgold and the people that didn't have anything. Back in 2014 we felt that there was a big need for us and our clients to have access to a free and open dataset. I don't know how familiar you are with with OrgRef, but [we launched OrgRef in 2014](https://blog.datasalon.com/2014/10/28/introducing-orgref/). 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Oh, I didn't realize! I'm only vaguely familiar with it. I hadn't known that.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Back in 2014 we launched OrgRef as the first free and open dataset about academic institutions. We worked mainly to establish some useful metadata around academic institutions and a hierarchy picture to provide a way of standardizing that information and making available to the wider community. I think when OrgRef was launched there wasn't any other free and open institutional ID available. We gave it away for free, and we used it within our products, and then we had a lot of input from some of our clients for developing the OrgRef data. 

It was pretty well received, but obviously the resource that we could attach to it was a lot smaller than what Ringgold could attach to their data, so there was quite a big gulf in terms of the volume of records that sat within the dataset. Ringgold had about 400,000 or so at the time, and we had I think about 80,000 -- although what we said at the time was that those 80,000 pretty much covered all of the likely subscribers to academic content. Anything more than that is kind of superfluous and sits a lot lower down the hierarchy. Not all scholarly publishers are going to be interested in seeing, you know, a secondary school in the middle of California that's not likely to buy a subscription. There was a lot of data within Ringgold that probably wasn't necessary for a lot of people's needs.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

We've definitely heard that before, and of course we appreciate it. ROR currently has about 105,000 records. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

OrgRef itself was extracted from structured information on Wikipedia and other open resources. And, as I say, it aimed to cover most of the important academic and research organizations. The metadata was very similar to what you would see in Ringgold -- things like name, country, URL, standard IDs like [VIAF](https://viaf.org/). We made that free and open for others to download. It was maintained by us and updated on a monthly basis. That probably was less frequent than some publishers would like, in the sense that they might be wanting to update their customers on a more regular basis. And so we managed that for a while, and then [Digital Science started their GRID dataset](https://www.digital-science.com/blog/2015/10/digital-science-launches-grid-a-new-global-open-database-offering-unique-information-on-research-organisations/), and they had more resource available to put into that. Their metadata was slightly richer. So we spoke to GRID, and we effectively provided all of the OrgRef data to allow them to enrich the GRID dataset a little bit more. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

That was very generous of you. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Well, it's free and open anyway! But we stepped back and let them carry on, just because we're quite a small company. We've got other products and things that we've more focused on. The main goal was really to have an open data set that those that couldn't afford Ringgold could use within our systems. If someone else was willing to take that on, that was fine by us. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

This my own speculation, because I didn't join ROR or these efforts until last year, right as GRID was sunsetting. But my sense is that even Digital Science may have felt the same way. And they were very helpful in setting up ROR. They did do GRID, and obviously they maintained it, and they were releasing, I think, quarterly. But they might also have been happy to have someone else take it on as a full-time, single-focus project rather than it being something that was helpful to the community generally, and necessary for their own systems, but not a product in itself.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yes. Although it's great to do it as an open resource, I suspect both Digital Science and ourselves, you know, partly did it for selfish reasons, as well as altruistic reasons. So I think when it gets to the point that someone else is prepared to take over, you say, "Yeah, that's great, thanks." 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Right.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

And ROR probably sits within that Crossref kind of space better. A lot of what we were doing was pretty much automated, although there was some manual input. As I understand it, there's more manual input on the Ringgold side for digging out the right record, making sure that that is the right address, etcetera. They'll resolve institutional lists that you might want to provide to them, and they do some other bits and pieces that sit outside of what is possible on the automation side. It comes down to, I suppose, publishers getting what they pay for. But having a free and open reference dataset is great for everyone, really.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Great. Can you take us through some details of what you've done in your ROR integration? How did that process go? What does that look like within MasterVision in particular, but also PaperStack? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yes, okay. We use ROR within both of those services, and both of those join together data from multiple systems to give a complete picture of the activity of those publisher customers, whether that's customer activity on the MasterVision side or the editorial processes and timeline of a given submission on the PaperStack side. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

And how did you match the ROR IDs to the existing institutional data? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

It was quite simple in the sense that because ROR data was, and is, very much similar to GRID, we would just use ROR in the same way as the GRID data that we'd previously been loading. Because ROR contained exactly the same data as GRID, including GRID IDs, it made it pretty easy for us to test and implement. We migrated each client site, and were able to check that the matching tools that we used were always giving the same results as ROR IDs. There's lots of challenges around that, particularly just using real-life data. The point of using a reference dataset means that we can go through that process of standardizing that information within the real data that we look at from publishers, which is pretty messy most of the time, and it's not consistent from system to system. There's things like different name forms, different location information, different data structures, data entry errors, missing location information. But a lot of those things we'd already addressed and developed within our own matching tools.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Gotcha.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Part of what we do is provide matching services to publishers as well, so that sits within the tools that we have. As we load data, we will match to the reference dataset where we can, where there are IDs that we can match, or we will use our own tools to auto-match against that reference dataset. So we're using that dataset in two ways. One is as we find them, matching customer IDs that might sit within the publisher data to the reference dataset, and the other is to match raw data to the reference dataset. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

And when you say customer IDs, what do you mean? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

If the fulfillment data that we get from a publisher contains a ROR ID or a Ringgold ID, we've got a match of ROR to Ringgold. So where those are used in the publisher data, we will match that to the standard record in ROR. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Gotcha. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

So those different instances of "University of Oxford" will match to [one "University of Oxford" record](https://ror.org/052gg0110). In their fulfillment data, they might have an ID; within something like usage and denials they might have a ROR ID. Where we can pick out those IDs, we'll use them, but we've got our own matching tools that we've developed over the last fifteen years or so that allows us to do auto-matching to create a link to the ROR data when those IDs don't exist.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Right!

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

We're doing work on our side to match to those standard records. We use things like fuzzy matching, and a list of alternative names to supplement those in ROR, and a list of alternative names to ignore. We've got our own encyclopedia, if you like, of common acronyms, things that are generally incorrect, lists of synonyms, typos, mappings to states, country codes. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Wow. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

We infer things like missing information from country name, we use email, web domains, etcetera, as well. So the auto-matching tools that we've got allow us to create that link to a standard record in whichever dataset it sits in even if those IDs don't exist in that original system.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

It's fascinating, and you do have a a nice [blog post](https://blog.datasalon.com/2022/11/11/datasalons-secret-sauce-revealed/) detailing some of what you've you just told me -- your "secret sauce." We've found that that matching is a thing that many people and organizations want to do, because there are a number of organizations that, as you say, had nothing, and so they have a pile of messy text strings, and we do have tools and methods that we recommend for doing that. But it's been remarkable to me in the last few months to discover how many different methods people are using. A lot of people are building their own systems for doing that, and they don't have your fifteen years of experience doing that matching with other things. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

What we've got in place is very well tried and tested now and works really well in a real-life scenario of messy data. It can be, you know, half a dozen different versions of Oxford University that might sit within the different datasets that we pull in, whether it's "University of Oxford," "Oxford University," or a subunit that sits below that top level, something like the Bodleian Library, which would be considered as part of the University of Oxford. You know, misspellings therein, or people will put in the wrong addresses. It can literally be, you know, half a dozen or more different variations of the same institution that sits within the data.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Is the matching that you do entirely automated, or is there any human checking afterward?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

There is a little bit of checking that goes on. It's predominantly automated; I would say probably 90% is automated. And then there is a manual checking process where we'll go through and make sure there's no obvious incorrect links there. That gets used in a couple of different ways. The first is on the fly, during the build processes for our two products, MasterVision and PaperStack. What we're doing is we're taking weekly data uploads from the publisher and then rebuilding those those sites for them on a weekly basis, sometimes on daily basis for a couple of our clients on the PaperStack side. Part of that build process will be running that matching against the latest data that we receive so that the publisher has the latest, best, single standard record for a given institutional customer based on the latest data that's come in. In that sense, it's working in an automated way as part of the build process, so if there's half a dozen versions of "York University," then we would link those up during that build process each week. Obviously, if there's IDs that we can use from Ringgold or ROR, then we can use those in the build process for creating that single standard record. And then we've used the auto-matching tools that we have to provide additional services to publishers. Some might not even have the MasterVision or PaperStack services with us. They might come to us and say, "Well, we've got 10,000 institutional records that are just a complete mess from this database that we've been keeping for the last ten years. Can you de-duplicate it? Standardize it? Match it to ROR?" And then, you know, we can do that. It's part of the service that we can provide as well. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Oh, that's interesting! I didn't know that. As I said, we actually have been hearing a lot of desire for that from different entities. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yeah, it's a pretty straightforward process. You know, it's not 100% accurate, because often the data is so messy that that's just not possible: what's available just isn't clear enough. Oftentimes the data might have been collected over the years from lots of different places. There might be someone, you know, going to a show that's just taken some notes down and has gone, "Well, you know, X university have got this address," and then it sits within the database and no one knows what to do with it or how clean it is. So, yeah, we often do projects for people where they want matching services to things like ROR or Ringgold if they license that. That's one of the other services that we provide. Going back to your question, ROR was pretty easy to integrate because of what had come before. It was easy to test, to put in place, and to roll out to each of our customers.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

You've said that the matching is not 100% accurate and that 90% of the matching is done automatically. Do you have any rough metrics that you know or can share about how accurate your matching is if you just do it automatically?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

That's a good question. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

I know it's hard to tell.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

It's tricky, because It depends what the original data is like. Sometimes the matching might be 90%, sometimes it might be 70%; it just depends on how clean the input data is. But I would say around 80% is probably right.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

And then, whatever the gap is, you'll check that manually?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Well, it depends on what the client wants us to do. If they want us to do some manual work to try and fill in some of the gaps, we can do that. I think, in a lot of cases, if it's really unusual data in the sense that there is really not much evidence to allow us to make a match, then even with some manual input it would be difficult to have a match that you were 100% sure was the right one. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Right, because you just can't tell what people mean. What do they mean?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Well, you know there at least two "York University"s in the world. There's [one in Canada](https://ror.org/05fq50484) and [one in the UK](https://ror.org/04m01e293). There might be [another one somewhere](https://ror.org/0190ak572) as well. If someone's put "York University" and there's little other information, you wouldn't be 100% on which one they meant. So in some cases there's some ambiguity there even when you get down to a manual level, because you just wouldn't be able to tell which was which. There is an element of not having all of the information to allow you to be 100% accurate. Because some of the data is just a complete mess, and it's just old stuff. We could be receiving a file which is literally from someone coming to us and saying "We found this file on a system of 10,000 names, and we don't really know what to do with it. Can you do something?" So it could just be not great, anyway.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Got it. Let me ask you, too, how do you get the newest ROR data? Are you using the ROR API? Or do you get the ROR data dump? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

We get the ROR data dump. We do use APIs for our PaperStack service when it comes actually loading certain information. We use the ScholarOne APIs and the Editorial Manager API for collecting the data. But yeah, we use the ROR data dump itself for loading into our services. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

We are doing [releases](https://github.com/ror-community/ror-updates/releases) now at least once a month, usually twice a month. Do you have a programmatic way of getting those new updates to ROR, or are you just redownloading it [from Zenodo](https://doi.org/10.5281/zenodo.6347574) every time?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

We download it on a monthly basis, so whenever there's a new one that comes out, we will pick that up and then apply it to the data that we've got. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Perfect. Just a couple of more questions. What do you hope ROR does in the future? Do you have any bug fixes, feature suggestions, advice, requests?

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Not especially. Our main concern was previously that there was no concept of inactive organizations, so it's great that [that's been addressed](https://ror.org/blog/2022-12-07-handling-org-status/). Going forward, I guess the best thing from our point of view would be adding new records just to increase the scope of the dataset. It's also key for us to keep the [organizational hierarchies](https://ror.org/blog/2023-02-27-parents-children-and-other-relationships-in-ror/) lean and relevant. As we talked about, having too many layers just takes away the usefulness of it and just muddies the water a bit. You don't need to know ten layers down what's going on, because it's either not important or not relevant. That's probably the main thing from our side, really, just for what we do, because that allows us to keep things like hierarchies within MasterVision and PaperStack understandable. If you're looking for a sales prospect, or you want to understand at what level a subscription's sitting at, or you want to know what authors are submitting at what institution, you don't need much more than that. You want to know those direct relationships, and maybe one or two layers down, but you don't need to know that someone worked at a library way down the tree that then isn't particularly relevant to the sorts of analysis you want to do as a publisher.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

And let me ask you this -- and let me see if I can phrase this correctly, because I'm coming up with it off the top of my head. What I'm wondering about is what the business case for ROR is for you, but also for publishers or other entities. How is ROR adding value to for-profit enterprises, given that it itself is free and open? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

It comes down to the standardization of your customer data and to have a unique way of identifying that customer, that organization within the sphere of scholarly publishing. If you can't associate all of your customer activity to a standardized picture of what that organization is, then what you're left with is a very messy picture that is difficult to understand, and it's very time-consuming to analyze and get into the guts of what your relationship with them ultimately is. If you've got multiple versions of an institution, if you're not tying up to that standard record, then you don't know, potentially, how much Oxford University is using your content. They might be referenced differently within the usage data, you know, something like COUNTER data. If they're referenced differently there to how you're holding their subscription information, then tying up those two things becomes really tricky. And then that potentially has an impact on not only how they see you as understanding them as a customer, but also when it comes to things like renewing subscriptions, particularly, if you're providing an inaccurate number to them, because you actually can't tie up all of the different sub-levels of the hierarchy of Oxford University to Oxford University, you can't see and present the same usage picture that they're seeing via COUNTER data, then that becomes a very untrusting relationship. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Yes indeed.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

If you're making a decision as a library based on how much you're using content, then you want to make sure those numbers align with what you're seeing. And as a publisher, if you're not able to present those numbers in a matching way, because you're not able to tie up the Bodleian usage with the University of Oxford as your top-level standard reference record, then it becomes a very difficult conversation. It's like any customer relationship. You need to feel valued, and that the person that you're working with, buying your product from, understands your needs. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Sure.

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

**And if you're then moving into OA, and you're not understanding a standardized picture of your customer hierarchy, and you don't know how many articles are coming out of the University of Oxford and how much they should be paying in article fees, then that becomes really tricky. I think there's quite significant financial implications on the customer service side by not having a dataset that allows you to clean up and standardize all of those customer pictures within your data.** It also saves money, really, for the publishers who want to use the best services for how they manage their data. You want to use the best content platform out there. You want to use the best submission system. You want to use the best fulfillment database. You don't want, and there doesn't exist, something that ties all of those together, because you've got different parts of the businesses using different products and services. So if you don't want the cost of trying to develop some uniting "answer to everything" system yourself, then having something like ROR allows you to continue to maintain and use the best systems you've got. Understand that those systems aren't going to be perfect, because there's lots of manual input of the data, but it allows you to have that flexibility and that sense of messiness and human error, and not be too worried about that because actually it gets tidied later on.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Right. We hear that a lot, that collecting beautifully structured, accurate metadata at the beginning is the ideal, but it just can't always happen that way. Particularly in the case of affiliations, which were collected so often just in a text field, It can be very difficult. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Yeah, exactly. Exactly. Doing a comprehensive review of your systems to ensure that things can only be input in certain ways is time-consuming and expensive. You can just use free text fields and allow people to get on with their jobs -- it's easier; it's the path of least resistance. And you can potentially clean that up a bit further down the line.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Yep. That's about all I have for you. What else do you want to say about ROR or your implementation of ROR? 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

I think I probably covered most of it, really. **ROR does open up new possibilities for us, such as integrating some of the other systems that are around at the moment. We're currently looking at bringing [OpenAlex IDs](https://openalex.org) into PaperStack. That should be really straightforward, because you can use the ROR IDs to retrieve the OpenAlex IDs [through their API](https://docs.openalex.org/api-entities/institutions).** So that's one of the benefits of having the ROR IDs and the mappings that we've got in place on our side. It's opening up some other possibilities for us, which is quite nice. But in the main, having that free and open data is beneficial to us and the community itself. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Great. Well, thank you so much again for doing this with us, Andy. 

### {{< figure src="/img/blog/datasalon/profile_andy.png" class="round-figure" alt="Andy Dobson" >}} Andy Dobson

Thank you. Bye.

