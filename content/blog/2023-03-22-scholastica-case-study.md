+++ 
title = "Case Study: ROR in Scholastica Products" 
date = "2023-03-22" 
draft = false 
tags = ["Adoption", "Integrations", "Community", "Case Studies"] 
categories = ["case-studies"] 
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png"
thumb = "https://scholasticahq.com/app/presskit/scholastica_logo_files/vertical-vector.svg" 
images = ['https://scholasticahq.com/app/presskit/scholastica_logo_files/vertical-vector.svg']
author = "" 
description = ""
+++ 

Scholastica  ...


{{% callout color="green" icon="no-icon" %}} 

### Key quotations 



-- Co-founder and Chief Technology Officer, Scholastica

{{% /callout %}} 



### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
   
Thanks for joining us! Please tell us your name, title, and organization.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
My name is Corey Schires. I am a co-founder and CTO at Scholastica.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Tell us about Scholastica.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Scholastica was founded in 2012 by myself and two other founders, Brian Cody and Robert Walsh. We met at University of Chicago. To this day, we all share a deep affection for academia. We have more products, and we've expanded over the last ten years, but our core mission remains the same: we want to empower academic organizations of any size to publish top quality journals, more effectively, more efficiently, and more affordably. We're also huge proponents of open access. Currently, all the journals published on Scholastica are open access.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That's amazing. When and where did you personally first hear about ROR?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
I don't remember exactly. It was probably in the context of Crossref. Actually, I also often find out about industry developments on Scholastica's blog. It's a good resource. I'm busy with a lot of other things, and so like other people in industry I use that blog to stay abreast. Full credit to Danielle Padula, our marketing director. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I was about to say! Danielle is so impressive. She actually just published an interview with me, so we have dueling interviews. She's very organized and on top of things. I'm jealous.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
So am I.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Who were the primary advocates of implementing ROR at your organization?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
I would say it was the sales team and Brian Cody, our CEO. The sales team is obviously always talking to a lot of prospective customers, and sometimes to current customers, and people are always asking for things. We're very dutiful about keeping notes on all of that and tracking what people are asking for. So while we heard it from the sales team, ultimately they're just relaying customer requests. If enough people ask for it, we'll probably build it.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
You're obviously very good about announcing new features in your products. We've seen you do that for ROR and for other features as well. I've been reading around in your announcements, and they are frequent and detailed and impressive. 

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Thanks. Again, credit to Danielle. She's also an advocate especially of features that we could potentially brag about, for lack of a better word. She wants to be able to publicize things that people will be excited about, so she's often asking "Hey, when are we going to get this done? We know that our industry cares about this, and I'm seeing a lot of buzz about it." And ROR is a good example of that.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That's great to hear. Even being fairly new to ROR, having been here a little over nine months, I could already tell coming in that awareness of ROR is not much of a problem, certainly not in the United States and Europe and Australia. We're also doing a lot of outreach to Asia and South America, to the extent that we can, and that's been been terrific. But it has seemed to me that there is a lot of buzz about ROR. And I am glad to hear that it's something you feel you can brag about. 

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
It solves a problem. And with all PIDs, the more people use them, the better they are.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That is so, so right. And while it's always hard to say someone is absolutely the first, as far as we can tell, Scholastica is one of the first major service providers to do such a thorough integration of ROR, where it's in more than one of your products. I've talked to a number of people at other companies that are thinking about it or working on it, and there are some other partial implementations or ones that are for specific customers. But anyway, congrats. 

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
That's good to hear, though I am a little surprised. It was on our internal roadmap for, I don't know, at least six months. It felt like we were saying "We're going to get to this" for quite awhile.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
The funny thing is that six months sounds fast to me! My certification has expired, but at one point I was a certified Agile product owner, and having worked on several software projects, especially in university libraries, I know that it's very easy for things to sit on roadmaps for months and months and months and months. So good for you! And now can you describe in general how you've implemented ROR in your systems?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Sure. So it wasn't too difficult for us. One thing you already touched on is that we have separate products for peer review and production, or publishing rather. And so that right away means we have to put it in at least two places. So our manuscript submission form, and then also the form that used to create an article. So you've got that was going for us are not going for, I guess, was a consideration, we've got to put this in two places. Or at least two. And then also, I think this yeah, I guess actually, kind of divided the product project into, you can think of it in two phases. One is like you got to collect the status, you got to update your web forms to somehow get this to the right. So that's, that's, you know, the collecting part. And then there's like the kind of using it or, you know, distribution or whatever, like now that you have this stuff, you need to make sure it's it's getting put in your CrossRef metadata. It's getting put your JATS XML, maybe Portico you know, I don't even know whatever, maybe, does DOAJ take it, I can't recall. But anyway, you got to make sure that anywhere, you're kind of generally sending article data, you want to make sure ROR is going along for the ride. And so for us, actually, what we did was kind of did it in the reverse order, we did the second part first, which was we set up all our downstream integrations or kind of different exports, to understand and expect ROR identifiers. And we shipped that all the way to production. Because we could. It wasn't doing anything, but it was sort of just there waiting to be useful. And then we did the second part for us, which was adding it to the various web forms so that we were actually collecting it. But that allowed us to kind of release it in two separate phases. And I mean, you mentioned agile project planning, like we're always looking for ways to break up and otherwise big project into couple releases, if possible. So that's the approach. That can be good tip for anyone who's I don't know, similarly, trying to keep it bite sized, if possible.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yeah, break it up into different phases. Yeah, that that. There's not only the collecting the ROR, as one phase, and the sending it as another phase. And I do know of a couple of integrations that have done. Actually, I know of several that have done one or the other I know of people who are adding the ROR manually to their JATS XML. They have people who just, as far as I know, copy and paste it into a template and send that to CrossRef. Smaller organizations. And then I also know of some systems that collect the ROR for internal use within systems and then don't send it in DOIs to CrossRef. So that's definitely one way of breaking it up. The way you've done it is the ideal way. 



### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Anyway, so that's fascinating. Let's see, in your, tell me this in your manuscript submission, system in particular, which I think is also your peer review system, if I'm not mistaken. Are you collecting ROR IDs for all authors, or just for the corresponding author?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
All authors fill out the same. Alright, yeah, they all fill out the same, or, sorry, when the corresponding author who's the one filling out the form on behalf of all the co authors as well, when they're filling that out, the fields for each author are the same, and so -- or mostly the same. There's a little bit of difference for the corresponding author, but they're mostly the same. And the ROR integration part is the same. So yeah, we collect it for all authors. 

{{< figure src="/img/blog/scholastica/ror-integration-manuscript-submission-form.png" alt="Scholastica manuscript submission form" >}}


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
And how do you handle when authors have multiple affiliations?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
So I think that you will, even apart from ROR you need your submission form to accept multiple to understand that authors may have zero or more affiliations, right. So so if your form is assuming each author will have one that's not terrible, but it's not it doesn't meet your, what we know, you know, to be real in the world. So So you know, you really need that as a starting point. And I would say, a good way to do it. I mean, I don't know, I don't think it's like, particularly novel is just you have a kind of standard, you know, add another, where you kind of click a link. You know, we see that in different online tools, the approach we took, feels fairly conventional, in a good way, I think, you know, you don't need to get so clever with something like that. So for us, we accept the institution name, which that that bit is the ROR name, you know, and that's where we, that field is what we use to find and associate the variety. And then we also have the department field, which doesn't really have anything to do with roar. But that gives you a place to put the other information that you might want to put, which isn't, you know, isn't the ROR data.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yeah, no, I think that's exactly the way we recommend to do it. You know, hopefully, our documentation is up to date on that. But yeah, it might or might not be I think, I need to do some of that update. But yeah, that's exactly what we what we suggest. So great. How do you handle when an author is affiliated with an organization that is not in ROR?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Sure. So kind of going back to what I said before, you need to get those two fields. We call it I think name and department. So that name field, as they're typing into that we have a user interface element, people call it "typeahead." Just for the non web developers, I guess you know, what it is, whatever, it doesn't matter. So we have a

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I had actually never heard it before. But that is what we call it and all of our documentation, you know, I thought of it as like a suggest box or something, you know, I don't know. But yeah, "typeahead."

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
It's an autosuggest sort of thing, when you're doing a search, the way they tell it, you know, it kind of suggests results. But anyway, so that, so as you're typing in the name field, we're suggesting results in that typeahead. And if they click on one of those results, great, it will fill up the field, and we'll have made the association. But under the hood, you know, then even in our interface, I mean, you could choose to expose the ROR ID or put a green check or something. Yeah, we didn't do any of that. We just sort of are collecting it unbeknownst probably to the users. And but anyway, to answer your question, because it's a typeahead field, they also can just type whatever they want. They don't have to pick something from that list. Yeah. So that's how we did think about being like, "No, you have to use ROR," briefly. But we decided against that.

{{< figure src="/img/blog/scholastica/ror-integration-article-form.gif" alt="Scholastica typeahead in form" >}}


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yeah, we just know, we recommend against that too. Because while we do have a process for, you know, people saying, "Hey, this is not in ROR, we'd like to add it," it's, you know, right now, it's just a Google form for a single organization. And it does take us, you know, roughly four to six weeks to get those new organizations into work. Because we do curate it, we have to check and see, "Is this a real organization? Is it in scope? Is it something that we want to add?" And? Yeah, so we asked people, absolutely, please don't require a ROR ID, because otherwise we'll get all these requests from people saying, you know, I can't submit my manuscript, and my annual report is due tomorrow or whatever. But yeah, so kudos to you exactly the right way to do it. And we're looking at ways we'd love to sort of be able to build some kind of process for collecting some of this data from ROR users about like, Hey, what are these organizations that people aren't finding in ROR, to see if we can add them. So we're thinking about, about doing that building some processes for that. But that'll take a while. To figure out.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
We'd be happy to send you a CSV or something of stuff that people have put in that isn't in ROR.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Feel free to do that we'd love to look at it. You can just email it to me. And that's where we are right now. We're like on the "email us a spreadsheet" spectrum of data collection in that regard, which is fairly primitive. But we'd be happy to look at it. So just a couple more questions. What benefits to you and your users is this ROR implementation providing?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
I would say the benefit to the users is that it's, you know, the richer metadata, which I mean, it's a super obvious answer. But, you know, the users don't always think or know or care about metadata. They also might not think of it as a feature. But, but I do think it is that and it does matter. And so, you know, we generally it's got to be you know, we're trying. We care about that metadata, something like ROR, you know, for example, we try to care about that for the customers, so they don't have to care about it. I mentioned that we, as far as I know, integrated it into every possible, you know, kind of way that we send data Portico or whatever the case may be, really tried to add it everywhere. And if we missed a place, someone will tell us eventually, and we'll have it there as well. But so that's the main thing is just the richer metadata. I, I, I think there's, some are, you know, there aren't any short term plans do this, but I am curious. I mean, this gives us the ability to do things that people have asked for occasionally, like, Oh, I'd like to see a list of all my past authors, and I would like to be able to filter that by institution, for example. We couldn't do that well, without a, you know, a stable kind of identifier to know, you know, what, you know, which institution is which. So, I think it opens the door for some possible new features for us. It also might just be interesting to at some point, you know, kind of query the data and see, you know, I could imagine, internally like a pie chart, and just looking at like, Oh, look at that most of the adopters are coming from, you know, Tier 2 schools or whatever, you know, I don't know that that would be anything other than merely interesting.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Sure. Yeah. Yeah, no, no, that's fascinating. And I, it's interesting that you did mention before that you're, you're not showing RORs to the users. And that whether they care about it or not, the ROR ID. And that enriched metadata is a service to them and a feature to them and might enable other features because that I think ORCID had the same experience, actually, where they kind of originally thought that they would be a behind the scenes piece of technical infrastructure. And I think we thought the same at ROR. But there are a lot of systems who do display it to their users. And it is kind of nice, because you can go link, you know, you can click on the link and go see that organization. It's a bit different from ORCID in that ORCID records really do have to be maintained by those researchers. So they really kind of honestly do need to see it. Whereas I think you're exactly right that users don't really need to see the ROR ID they just need to, but they will benefit from that behind the scenes tidiness and enrichment of the metadata.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
As I recall, like, I wasn't managing this specific project, but as I as I recall, like, we we did talk about that. Like, should we show it? One, we also talked about, for example, like, if you don't, in that case, where it's not in ROR and you type in something that is just, you know, whatever, not in ROR. We've thought about putting, like, kind of a yellow warning like, "Oh, this isn't in ROR," you know, and actually start to code that I know, but then kind of pulled it out of the plan, on because as we were thinking more about it, it was like, people are gonna see this and they're gonna think something's wrong.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That's right. I really I can't commend you enough. I think you're exactly right. I think you're exactly right. I have seen systems where they do the green checkmark where they can find it but when they do that they explain and even then you're right. I mean, it may lead to I we've had a couple of sort of misunderstandings about that, you know, I mean,

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
These three authors have green checkmarks in this one doesn't: What am I doing wrong?

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yeah, it's like oh, no, nothing is wrong. It's perfectly legitimate organization or they're an independent researcher or you know, all kinds of legitimate reasons for there not to be a ROR.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
And we can you know, layer that in later if there's some reason to. But this is where we started.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
What do you hope ROR does in the future? What opportunities should we pursue, or what would make it easier for you and other service providers to adopt ROR? What feature suggestions or bug fixes do you have for us?  

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
The main thing is that I'm just glad ROR exists. There all kinds of reasons why you would want to know what institution an author is coming from. Before ROR, I was aware of some of the commercial competitors, but they are prohibitively expensive for many smaller journals, and they are also more difficult to integrate. We do work with bigger journals and presses, but we also work with a lot of small journals, and the price was a concern for us as well as for our customers. So when ROR came out as something that was free and community-supported, that was super important.

But that doesn't really answer your question. I would say one thing I like about how you've set up ROR is your approach to parent-child or nested institutions. Obviously, you can go super deep on that and get extremely detailed. And I think you have helpfully resisted the urge to go deeper than in my opinion makes sense. I mean, people don't always realize that: it's kind of counterintuitive that there can be an inverse relationship between the richness of a dataset and its utility.  It can get so granular, and that's cool, but then it's really hard to make any kind of inference from the data. It becomes like [Borges's map](https://en.wikipedia.org/wiki/On_Exactitude_in_Science). It's really exact, but it's useless. 

{{< figure src="/img/blog/scholastica/map-territory.png" class="blog-figure" alt="What do you consider the largest map that would be really useful? - About six inches to the mile. - Only six inches! exclaimed Mein Herr. We very soon got to six yards to the mile. Then we tried a hundred yards to the mile. And then came the grandest idea of all ! We actually made a map of the country, on the scale of a mile to the mile! - Have you used it much? I enquired. - It has never been spread out, yet, said Mein Herr: the farmers objected: they said it would cover the whole country, and shut out the sunlight! So we now use the country itself, as its own map, and I assure you it does nearly as well." caption="Carroll, Lewis, and Harry Furniss. Sylvie and Bruno Concluded. London and New York: Macmillan and Co., 1893. [HathiTrust](https://hdl.handle.net/2027/uc2.ark:/13960/t6ww7b09m?urlappend=%3Bseq=208). Accessed 22 Mar. 2023. Influence on the one-paragraph Jorge Luis Borges short story 'Del rigor en la ciencia' [(On Exactitude in Science)](https://en.wikipedia.org/wiki/On_Exactitude_in_Science), first published 1946." >}}

Secondly, why that's something that, you know, I'm like, and when I am I like looked into that, because, you know, whatever thinking about that problem looking that my soul is like, Oh, I like the approach they've taken here. I agree with this made me feel like y'all are? Well, the opinion aligns with mine, which is comforting to me.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Wonderful. No, that's great. I don't know if you saw our recent blog post about hierarchies and relationships, we say some of those exact things. Let me put a link to the chat here. Because we actually, we found that somehow, people were kind of under the impression that ROR didn't do hierarchy at all.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Yeah, that is what I thought initially. But I remember being like, oh, no, I was looking at the API and I saw, okay, yes, there's some relationships.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yeah. And I think that, you know, honestly, this is now you've been so kind about ROR when I asked you to give us constructive feedback. And hopefully, we'll get to that. But honestly, I think that is a piece of constructive feedback that we needed to hear, that we were sort of miscommunicating about what we can do, because we were people kept asking about university departments in particular. And we don't do university departments. But it doesn't mean we don't do organizational hierarchy at all. You know, yeah, we absolutely do do that, and parent child organizations and related organizations and all that. So we've just put out a sort of an explainer and we've beefed up our documentation a lot to say, yes, we do have this so that you don't have to look at the JSON look at the API in order to figure it out. And I think actually, even on our search interface, we didn't have the relationships there for a while. And we just added that a few months ago. So, you know, since a lot of people are looking at ROR, just in that browser UI, they didn't realize it. So yeah, we put out a whole sort of very long explainer in which we talk about exactly what you just said that, you know, we really, honestly think that the degree of granularity we have, which is not as deep as some other organizational identifiers is a feature, not a bug.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
I agree with that. Keep it simple, or at least relatively.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
"Keep it simple, stupid," right, is the acronym.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
You know, I might have a better answer as we start to use it more internally. But I would say right now, it's like, actually kind of touching on what you mentioned about the Crossref API, which I love CrossRef. Don't, don't get it wrong. But you know, it is it is like, just like a small example, like we had some tests in our, in our test suite, which had the CrossRef API, we had to kind of disable those by default, because sometimes the API goes down, and then our test suite is failing and causes problems for us. Like, I digress, my point, what I was going to say is kind of invest in resiliency of the API, and I think of the organization because like, you know, it's increasingly useful I think, and we need it to work, us service providers.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That is great advice. Our API has had wonderful uptime so far, we have a little heartbeat, you can check api.where.org/heartbeat. So you can just send a little quick query to that. But we definitely have been seeing increased use, and increased use, and increased use, which is great. We want that to happen. But it does mean that there are more costs. And we are, it's actually, it's, as I say, we've got this three model, or three organization model of support. So DataCite is actually the one who pays for our technical infrastructure. So and our technical lead lives because our niche works for DataCite. So she's, you know, periodically having to go back to them and say, You know, we need more, we need more AWS credits, or whatever it is. And then CrossRef does kind of a lot of the financial administration stuff. But that is great advice. And then I mean, the other thing I guess I'll say about organizational resiliency is is part of technical resiliency. Last fall, we announced that ROR is now part of the operating budgets of CrossRef, DataCite and CDL. So we're not going to have a member model, we might start having people register for the API at some point, just because it can be annoying not to know who's using it, or like doing tons of calls or whatever. But there's no actual plans to do that. But But CDL, CrossRef and DataCite. Er, have said, Yes, we have written more into our budgets, we will support it. So as long as people are still paying member fees to DataCite and CrossRef, and tuition to UC colleges, then ROR will be around.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Right? Yeah, you know, one of the little thing about the API, we, as you're obviously aware, you can get the data dump and kind of query that or you can hit the API, we kind of evaluated both approaches. And specifically, what we were looking at is like, is this API going to be fast enough and reliable enough? Because we would prefer to hit the API than keep our own copy of the data. And in our testing, yeah, it was good. So that's, that's great.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
And to be honest, the data dump is getting updated every month. So we've had we have seen people, you can get that, you know, new ones, programmatically by querying Zenodo. But it can be a little bit of a pain to be honest to like, make sure you have the latest version of the data, and so on, which isn't that important for all implementations, but most people do want to update it. So yeah, I mean, with if you're querying the API, you don't have to worry about that. You're just getting the updated data when it gets in there. So is there anything else you'd like to say before we wrap up?

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires
  
Um, I don't I don't think so. One thing I would say is that this was a team effort. I didn't work that much on the ROR project. Brian Cody, our CEO, he did most of the project planning and actually most of the spec writing, which is not, not usually you know, how he spends most of his time. He wanted to help get this one done. So and then several different developers worked on it. Specifically one of our developers, Tatum Szymczak, really carried it across the finish line. So yeah, I mean, it's like a whole bunch of people working on it, and yeah, that's important.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yes, it is! Well, thanks for talking with me, Cory. It was nice to chat.

### {{< figure src="/img/blog/scholastica/cschires.jpg" class="round-figure" alt="Cory Schires" >}} Cory Schires

I appreciate your time. Thanks for involving me. Happy to be doing this for ROR. 




{{% callout color="green" icon="no-icon" %}} 

- [Register for an upcoming ROR Community Call](/events) to hear about integrations like these and more.

{{% /callout %}} 
