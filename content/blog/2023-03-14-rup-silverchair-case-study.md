+++ 
title = "Case Study: ROR at Rockefeller University Press and Silverchair" 
date = "2023-03-14" 
draft = true 
tags = ["Adoption", "Integrations", "Community", "Case Studies"] 
categories = ["case-studies"] 
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/blog/rup/rup-silverchair-logos-sq.png" 
images = ['/img/blog/rup/rup-silverchair-logos.png']
author = "Amanda French" 
description = "Rockefeller University Press has incorporated ROR into many aspects of their workflow, and their platform provider Silverchair was there to help. This case study is drawn from the presentation about this integration given at the December 2022 ROR Community Call."
+++ 

Rockefeller University Press has incorporated ROR into many aspects of their workflow, and their platform provider Silverchair was there to help. This case study is drawn from the presentation about this integration given at the December 2022 ROR Community Call by Rob O'Donnell, Senior Director of Publishing at RUP, and Emily Hazzard, Product Operations Analyst at Silverchair. 

{{% callout color="green" icon="no-icon" %}} 


### Key quotations 

"When we get new deals, we set them up in EJP systems. And they're all assigned using ROR IDs, so the process is then completely driven by ROR. The system looks for a match between affiliation ROR IDs and deal ROR IDs. And once there's a match, we know they're eligible for that deal."

"I'm excited that we're now live with our Open Access Switchboard eligibility workflow, which is known as 'E1' in Switchboard lingo. If a manuscript is not recognized as part of a deal using what was shown in the last step, we use the ROR IDs we've gathered to sequentially query each of those organizations to ask if they'll pay the gold OA fee for the article."

"[W]e're about to finally start including ROR IDs in our JATS files, and once we do, Silverchair is ready to include those in Crossref deposits."

-- Rob O'Donnell, Senior Director of Publishing, Rockfeller University Press

"[I]n the institutional management service in SiteManager, we're going to be introducing a way to search institutions based on the ROR ID just because it's incredibly convenient."

"[S]omething else that we're planning on doing is [...] introducing ROR-based reporting to support those Read and Publish agreements so that we can expose the relationships between those authors and institutions, and really see what's coming out of these institutions. Where is it published? Where does it live? And how do we serve those authors better?"

-- Emily Hazzard, Product Operations Analyst, Silverchair 


{{% /callout %}} 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
We've asked Rob O'Donnell, Senior Director of Publishing at Rockefeller University Press, to tell us about some of the new things they're doing with ROR. 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

Thanks for having me. Let me start by giving you some pertinent information about [Rockefeller University Press (RUP)](https://rupress.org/). We're a small university press publishing 3 and 1/3 biomedical journals. The third is [Life Science Alliance](https://www.life-science-alliance.org/), which is a collaboration open access journal with [Cold Spring Harbor Laboratory Press](https://www.cshlpress.com/) and [EMBO Press](https://www.embopress.org/). We're predominantly institutional subscription based, transformative, and we're using Read and Publish deals as a stepping stone on our way to becoming fully open access. We use [eJournalPress (EJP)](https://www.ejournalpress.com/) submission production and billing systems. Our content is hosted mostly on [Silverchair](https://www.silverchair.com/); LSA's content is on [HighWire](https://www.highwirepress.com/). We're active with the [OA Switchboard](https://oaswitchboard.org), which is a switchboard for both reporting and eligibility querying. 

{{< figure src="/img/blog/rup/slide-01.png" alt="RUP Overview: three and one-third journals, institutional subscriptions, user of eJournalPress and Silverchair, active with OA Switchboard" >}} 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

This slide is basically an outline of what I'm going to talk about, and I think it's a good visual that shows how much our workflows now revolve around ROR. We're using them really in every aspect of our workflow. And so I'll start at the top with how we use ROR IDs to model our Read and Publish deals and then work clockwise.  

{{< figure src="/img/blog/rup/slide-02.png" alt="ROR in RUP workflows: assess deal potential, configure Read and Publish deals, gather ROR IDs upon submission, perform OA Switchboard E1 check, do production check, send ROR IDs to Silverchair and Crossref" >}} 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

We have Read and Publish deals with I think over 200 institutions across all our deals. Now that includes consortia, but that's the number of institutions we have so far. And the first thing we did was map our subscriber IDs to ROR IDs. We already had Ringgold for most of our subscribers, so we started there and we [went from Ringgold to ISNI to ROR](https://ror.readme.io/docs/map-other-organization-id-types-to-ror#mapping-ringgold-ids-to-ror). We also added those ROR IDs to our subscriber records in [Silverchair's SiteManager](https://www.silverchair.com/the-silverchair-platform/tools-technology/), and Emily will talk more about that later. Then we mapped archival author affiliations to ROR; we went back to 2017. And most of those were done via [Dimensions](https://dimensions.ai). We have a subscription to Dimensions, and Dimensions still includes GRID IDs in their results -- not sure if they will update those to ROR IDs. They still use GRID internally, which made it easy to [go from GRID to ROR](https://ror.readme.io/docs/map-other-organization-id-types-to-ror#map-a-list-of-ids-to-ror). And then once we had ROR IDs for both authors and subscribers, we were able to match our published output with subscribers in order to model and create our deal proposals. And we now also use the map to ROR IDs to alert previous authors at deal institutions that they can now publish at no cost. To them, at least. 

{{< figure src="/img/blog/rup/slide-03.png" alt="Read and Publish Deal Assessment: Mapped subscribers to ROR via Ringgold to ISNI to ROR, ROR IDs housed in Silverchair’s SiteManager, mapped archival author affiliations to ROR, mapped GRID via Dimensions and institution name and email suffix, allowed us to see publishing output per subscribing institution to help model deals and market those deals to former authors, enabled better workflow in place for new content" >}} 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

Now I'll tell you about Read and Publish deal configuration and eligibility checks. **When we get new deals, we set them up in EJP systems. And they're all assigned using ROR IDs, so the process is then completely driven by ROR. The system looks for a match between affiliation ROR IDs and deal ROR IDs. And once there's a match, we know they're eligible for that deal.** Because we have consortia and large institutions, we need to map all [sub-organizations](https://ror.readme.io/docs/ror-hierarchies-and-relationships) that are included in deals as well, and this is a manual process. I've been wondering, and I've had discussions with Andrew Pitts, if the [IP Registry / PSI Registry](https://psiregistry.org) could help here, because I know that they now have ROR IDs in the registry. If they were part of the API, being that we use PSI and they have our subscribers broken down and clustered into consortia or large institutions with only certain sub-institutions, if we could get those ROR IDs directly from them, it would be a huge help. And then corresponding authors are alerted that they're eligible for a deal when they go to sign their license form. We are building other steps in the workflow where we can alert them earlier in the process, but right now they just see it when they're about to sign their their form. 

{{< figure src="/img/blog/rup/slide-04.png" alt="Read and Publish deal configuration and eligibility: Deals configured by ROR within eJournalPress submission and billing systems, hierarchies created and children mapped manually, opportunity for IP  Registry integration, corresponding authors alerted to eligibility based on affiliation ROR IDs" >}} 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

Last time I presented about ROR, we were only collecting ROR IDs for the person record in EJP, which was a problem, because that's not necessarily a manuscript affiliation. Since then we've improved the process, and I can show you that here. EJP has its own instance of the record database in their system. When the author is filling out their submission for their submission form, they do the typeahead, it's looking up the ROR record in the EJP database, as I just said, and then you get the green checkmark to show that it's validated. We also have this new section where we're asking them -- the corresponding author, that is -- for all their affiliation ROR IDs. And it's the same process for each institution. What I've shown here is that if they don't select from the typeahead menu, and they just hit Save, or if they choose a name that's not in ROR, they get this message that basically says, "Look, if you leave it this way, you're not going to be eligible for any free publishing." And so they can add as many as they need to, and then all of those will then be checked against the deals to see if they're eligible. Our policy is that any corresponding author affiliation on the manuscript is eligible. 

{{< youtube id="BmTjUYrYKOQ" title="Rockefeller University Press ROR-powered author affiliations" >}}

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

The next slide is about the [OA Switchboard](https://oaswitchboard.org). I assume that everyone on this call is familiar with the OA Switchboard. If you're not, look into it. Check it out: it's worthwhile. **I'm excited that we're now live with our Open Access Switchboard eligibility workflow, which is known as "E1" in Switchboard lingo. If a manuscript is not recognized as part of a deal using what was shown in the last step, we use the ROR IDs we've gathered to sequentially query each of those organizations to ask if they'll pay the gold OA fee for the article.** We're generally doing this during revision when there's a high chance of acceptance: we don't do it for every manuscript. That would be just way too much. And we're also querying contributing author affiliations now, even though we're not collecting them yet. We're using [Appetence's smart matching](https://www.youtube.com/watch?v=MzfeUJwtDBg&list=PL4n_Cvd0PpoHfsM3_6VfhAovGIfL3Z79x&index=8) -- I think Ivo presented that to this group. And that's working well, too. That matches text-based affiliations to ROR IDs and then directs the queries to those institutions. And the Switchboard also maps our tagged [Funder Registry IDs](https://www.crossref.org/services/funder-registry/) to ROR and creates those organizations as well. So we're tagging all affiliations, all funders, asking, "Hey, would you be willing to pay for this?" And of course, we also use the Switchboard, via ROR, to report on published articles. 

{{< figure src="/img/blog/rup/slide-05.png" alt="OA Switchboard: Eligibility E1 check, smart matching, corresponding author ROR IDs used as is, contributing author ROR IDs captured via Appetence smart matching, Funder IDs mapped to ROR by Appetence, post-publication P1 reporting routed via ROR" >}} 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

And just a quick mention: we've recently introduced a workflow step in our production workflow where production editors will check for any missing ROR IDs. And if they're missing from the ROR database, they'll now [request that they be added to ROR](https://curation-request.ror.org). In some cases, authors like to put in a medical school or a hospital if that is where they are rather than the parent organization. And that ends up coming across production without a ROR. So Adam, I'm sorry if you've been getting [requests for med schools](https://github.com/ror-community/ror-updates/issues). 

### {{< figure src="/img/adam-sq-200.jpg" class="round-figure" alt="Adam Buttrick" >}} Adam Buttrick

That's okay. That's [my job](/about/#adam-buttrick-metadata-curation-lead). 

### {{< figure src="/img/blog/rup/rodonnell.jpg" class="round-figure" alt="Rob O'Donnell" >}} Rob O'Donnell

I wish there a way, and maybe we can do it locally with the EJP instance, that if someone starts typing a medical school, that it just grabs the parent ROR. That's maybe something we can work on locally. 

{{< figure src="/img/blog/rup/slide-06.png" alt="Production Check and Request: Production editors check manuscripts for missing ROR IDs, request to add via ROR request form, will add a top-level ROR to manuscript metadata when appropriate" >}} 

Emily is now going to talk more about what Silverchair is doing. And I'm grateful that they're doing quite a bit. **But briefly, we're about to finally start [including ROR IDs in our JATS files](https://ror.readme.io/docs/include-ror-ids-in-jats-xml), and once we do, Silverchair is ready to include those in Crossref deposits.** So we're starting that process now, and they should appear in published articles in January. And the goal, as I said earlier, we also have our ROR IDs in Silverchair's SiteManager, which checks eligibility. So the goal is to be able to report easily through Silverchair on Publish output and Read output for any institution. 

And then finally, we have a pilot with [ResearchGate](https://researchgate.net). It's a longer pilot than we anticipated because of some problems, and one of them is entitlement checks. Not all of our content is Open Access, and we are planning to send ResearchGate content that is access-controlled. And the way we plan to do that is via [Google Scholar Subscriber Links](https://scholar.google.com/intl/en/scholar/publishers.html#otherpolicies). And with [Anurag Acharya](https://en.wikipedia.org/wiki/Anurag_Acharya)'s approval, we have added ROR IDs to our Subscriber Links -- or, I should say, Silverchair has -- and we plan to use those to help grant access to subscribers. And that's all for me. 

{{< figure src="/img/blog/rup/slide-07.png" alt="Downstream: Sending ROR IDs to Silverchair and Crossref, about to start including ROR IDs in final JATS files, Silverchair poised to deposit to Crossref, goal is holistic reporting of publish and read metrics based on ROR, potential use of ROR for syndication entitlement check on ResearchGate" >}} 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

That's amazing. That was really wonderful. I mean: all the applause. We will now hear from Emily Hazzard, Product Operations Analyst at Silverchair, about Silverchair's part in this. Emily?

### {{< figure src="/img/blog/rup/ehazzard.jpg" class="round-figure" alt="Emily Hazzard" >}} Emily Hazzard

Hi, everyone. I've just got the one slide, and we're going to go into dark mode. Rob already talked about a lot of the things that we're doing, so if there are questions, just let me know. But for those of you who I haven't met, I'm Emily. I'm on the product team at [Silverchair](https://www.silverchair.com/). And my role is really sort of working between the high level visioning stage and the detailed requirements stage, so I'm involved in a lot of things ROR. We are mainly implementing things based on what our publishers find the most important, and we're always open to ideas. I love persistent identifiers: I could talk about them for a long time. And that's why we're all here. So I'll talk a little bit about what we currently support, and just a couple of things on the roadmap. 

{{< figure src="/img/blog/rup/slide-08.png" alt="Current + future support for ROR IDs at Silverchair: Publishers can add ROR IDs to institutional information stored in our system; when a ROR ID has been added to an institution, it is included in Subscriber Links for Google Scholar; publishers can include ROR IDs alongside author affiliations in articles, proceedings, books, and chapters; when an author affiliation includes one or more ROR IDs, that information is sent in Crossref, PubMed, and fulltext deposits; on the roadmap, we will introduce the capability to search institutions in our system based on ROR ID, and we plan to develop reports that surface the connections between institutions and authors" >}} 

One of the things that we support is connecting those institutions to ROR IDs. Publishers like Rockefeller are able to go into our [SiteManager system](https://www.silverchair.com/the-silverchair-platform/tools-technology/), and then add those ROR IDs to the institutional information that we store. And beyond what we're doing with Google Scholar Subscriber Links, which Rob has already mentioned, we're going to be able to use those in other ways. Step 1 was really just making sure that we had the space for them in our system so that we can do everything that we want to do in the future. As you saw from that screenshot, we do include them in Subscriber Links. And that's mainly being used to support the ResearchGate use case that Rob mentioned. They are available to Google Scholar: I don't have a lot of insight as to what Anurag is doing with those ROR IDs now, but if he chooses to use them, I'm happy to share updates about that in future calls. 

We also allow publishers to include ROR IDs alongside author affiliations in articles and proceedings and books and chapters for the content that's loaded to our publishing platform. That means that we're able to then auto-magically downstream that information in [Crossref](https://crossref.org) deposits and [PubMed](https://pubmed.ncbi.nlm.nih.gov/) deposits and any full-text deposits. Once we've got that information in our system, all of that information is just going to be sort of propagated out to all of those different indexing services, which is exciting. **As far as things on our roadmap, in the institutional management service in SiteManager, we're going to be introducing a way to search institutions based on the ROR ID just because it's incredibly convenient.** Sometimes it's easier to find something based on a persistent identifier than something that might take a little bit of disambiguating to find out how it might have been spelled or transliterated. **And something else that we're planning on doing is another thing that Rob mentioned, which is introducing ROR-based reporting to support those Read and Publish agreements so that we can expose the relationships between those authors and institutions, and really see what's coming out of these institutions. Where is it published? Where does it live? And how do we serve those authors better?** 

So that's what we're doing right now. I've got lots of ideas for things that I am interested in. Again, talk to me if you have more questions. Any questions about the things that we're currently doing or that's on our roadmap here?

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

I suppose I'm a little curious as to whether all of the users of Silverchair get all of these features at once, or are you doing it more client by client? 

### {{< figure src="/img/blog/rup/ehazzard.jpg" class="round-figure" alt="Emily Hazzard" >}} Emily Hazzard

That's a great question. So the SiteManager piece, adding those ROR IDs to the institutional information, that's available to any client right now who's using that service, which is everyone on our SEM and Platform themes. So we've got really a couple of different platforms. And then connecting those authors to ROR IDs and including that downstream, that's available to everyone on our latest version of the platform, which is the Silverchair Platform theme. We try to auto-deploy as much as we can, especially when we know it's going to be just abundantly useful for things like a persistent identifier, so that's one of the things that I always try to make sure we can do where we can do it. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Wonderful. Thank you. 

### {{< figure src="/img/blog/rup/ehazzard.jpg" class="round-figure" alt="Emily Hazzard" >}} Emily Hazzard

Absolutely. Well, thanks, everybody. If you have any other questions, reach out.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Thanks for telling us all about your work with ROR, Rob and Emily. 


{{% callout color="green" icon="no-icon" %}} 


- [Download the slides](/documents/2022-12-08-ROR-RUP-Silverchair-Slides.pdf) as a PDF
- [Contact Rob O'Donnell](mailto:odonner@mail.rockefeller.edu), Senior Director of Publishing, Rockefeller University Press
- [Contact Emily Hazzard](mailto:ehazzard@silverchair.com), Product Operations Analyst, Silverchair
- [Contact Amanda French](mailto:amanda@ror.org), ROR Technical Community Manager
- [Register for an upcoming ROR Community Call](https://ror.org/events) to hear about integrations like these and more

{{% /callout %}} 


