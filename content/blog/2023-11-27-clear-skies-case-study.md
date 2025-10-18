+++
title = "Case Study: Clear Skies, Research Integrity, Data Science, and ROR"
date = "2023-11-27"
draft = false
tags = ["Adoption", "Integrations", "Community", "Machine Learning", "Research Integrity", "Interviews", "Clear Skies"]
categories = ["Case Studies"]
archives = ["2023"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.jpg"
thumb = "/img/blog/clearskies/clear-skies.png"
images = ['/img/blog/clearskies/clear-skies.png']
authors = ["Amanda French"]
description = "Adam Day, CEO of Clear Skies Ltd., discusses how he works to improve research integrity with tools like Papermill Alarm, why such tools can assist but can't replace human investigators, and what's so important for data scientists about free and open identifers like ROR"
doi = "https://doi.org/10.71938/k0xk-2x70"
+++


Adam Day, CEO of Clear Skies Ltd., discusses how he works to improve research integrity with tools like Papermill Alarm, why such tools can assist but can't replace human investigators, and what's so important for data scientists about free and open identifers like ROR.

 

{{< callout color="green" icon="no-icon" >}}

### Key quotations

"Having institutional identifiers in there, it's part of the puzzle. And it's an important part of the puzzle. But there are limits to data analysis. Data analysis has got to help people to do the investigation – not try to do it for them."

"If we're talking about misconduct, then you might need to be able to contact the institution that the author is from. On an individual manuscript, it doesn't matter if there's no identifier – an address will do. But if you find some signal that is on manuscripts at scale, and you've got thousands of them, well, you need an identifier. You can't go through them and try and search for every single one of those institutions."

"Having nice, clean, big, open datasets like this is really valuable, especially for a problem like this one, a problem which does require taking a big step back and looking at all of the data together, and not having barriers in the way of getting parts of it."

-- Adam Day, CEO, Clear Skies Ltd.

 

{{< /callout >}}


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Thank you so much for agreeing to talk to me about ROR. Can you begin by telling us your name, title and organization?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

Adam Day, CEO, [Clear Skies, Ltd](https://clear-skies.co.uk/).


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Lovely. Tell us about Clear Skies Ltd. When was it founded? What does it do? What makes it special?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

Clear Skies was founded in, let's see, the first quarter of 2022, so not very long ago. The whole idea behind Clear Skies is to take data from multiple sources, bring it together, and use it to help research integrity. That’s what makes us special – our data is completely unique. But I mean ‘research integrity’ in a broad sense: not just research integrity as in dealing with misconduct or papermills, but the whole process. What can we do by bringing data together to help make research better or more robust?


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

I know that your flagship product is [The Papermill Alarm](https://www.science.org/content/article/fake-scientific-papers-are-alarmingly-common), but does Clear Skies have other products that you're working on?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

We do. That being said, the Papermill Alarm has been a much bigger success than I had expected. Initially, the Papermill Alarm was one pipeline for detecting papermills, but then we came up with a bunch of other pipelines for that purpose. To avoid confusion, we rolled all of those services up into one product with simple, clear, output. That’s the Papermill Alarm.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

When and where did you personally first hear about ROR?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

I was at a FORCE11 conference in Edinburgh, and one of the sessions was about ROR. I wanted to do analysis at an institutional level. So, you want to say, "Okay, which institution is producing the most papers on some topic?" or "Which is the best-cited institution on some topic?" or maybe "Which institution in which country is growing the fastest?" Those are the sorts of questions that you might want to ask, and if you only have, say, addresses to go on, that's a total nightmare. Completely impossible at industry-scale.

 

There are other systems for identifying institutions, but they are not easily connected with the data. When you look at a dataset like [OpenAlex](https://openalex.org), a very large part of it has these ROR IDs, and you go, “Great, I could just use that" and suddenly all this institutional analysis is possible at any scale.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

And then for what purpose did you begin using ROR?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

At Clear Skies, I wanted to examine the papermill situation at an institutional level. Initially, this was part of sense-checking the results coming from the Papermill Alarm development process. ROR showed which institutions trigger the Papermill Alarm most often – and it turns out that the same institutions already have retractions relating to papermills. I doubt that’s a coincidence!


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

How important do you think that organization correlation is in detecting papermills? What are the other factors that are important in that?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

There are a lot of factors in there. Institution is part of the picture. The key metrics that have proven the value of the Papermill Alarm are things like:

- Recall of known papermill-products. When we train the Papermill Alarm, we show it examples of papermill-products, but not all of them. We keep some aside. Then, after training, we show some non-papermill-products and those known papermill-products. If the Papermill Alarm can accurately flag the known papermill-products and flags none of the non-papermill-products, then we have good evidence that it works.

- Prediction of mass-retractions. There is a long and growing list of these. Given real-world data, the Papermill Alarm consistently identifies the potential for these events.

In practice, the fundamental thing is that there has to be a human-in-the-loop in the analysis of every case. It would be fantastic if we could just have this wonderful, magical machine that could detect all of the fraud and deal with it for us with 100% accuracy. But the reality is that you need to have humans in there who can exercise judgment over each case.

 

Imagine a plagiarism case, where you find two papers that are basically identical. And so you say to the author, "Hey, look, we found these two papers, your paper and this other one, and they're the same. Did you copy this paper?" And the author might come back and say, "No, I didn't. It just coincidentally happens that I wrote an identical paper to this other person who I have never met." That is an excuse that comes up sometimes. And, of course, there has to be someone there who can look at the evidence, weigh it up carefully, and say "I don't believe you."

 

That's it. **Having institutional identifiers in there, it's part of the puzzle. And it's an important part of the puzzle. But there are limits to data analysis. Data analysis has got to help people to do the investigation – not try to do it for them.**


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

What other persistent identifiers do you use in Papermill Alarm?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

There are lots of things that come into the analysis. [DOIs](https://doi.org), frankly, are absolutely critical. Then there's [ORCID](https://orcid.org), which we use to some extent, although it is not universally adopted. There isn’t a perfect way to identify journals and publishers, but we get pretty far using a mix of OpenAlex’s IDs, ISSNs and Crossref’s member id.

 

Does the ROR identifier get added from the affiliation string?


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Yes! We actually just published [a case study with OpenAlex](https://ror.org/blog/2023-09-13-openalex-case-study/), which you may want to read. They did some pretty heavy lifting in terms of doing that string to ROR ID matching, too, and apparently it's working quite well. The large majority of OpenAlex materials do have ROR IDs, and they are using exclusively ROR IDs for organizations right now.

Can I ask, do you do this inductively, where you look for interesting patterns in the data? Or do you start out with a hypothesis and then see whether or not it checks out based on your analysis?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

The original Papermill Alarm started out with a hypothesis about what was going to be detectable and what wasn't. And it turned out to be a lot more than I'd expected. But there have been plenty of times when I've been digging through data (something which I do more than I would care to admit). And then you'll see something and think, "Oh, maybe I could look at this." And it turns out that the thing you're looking at is quite important. And also, more often than not, the thing you're looking at turns out to not be important. So hypotheses come up, you know, as you're digging through stuff, and you find things that way.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

That sounds like good science, I'd say. Going back to something we were talking about earlier, how do you think that persistent identifiers like ROR can help with the overall project of trying to ensure research integrity?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

On the one hand, it's just about data integrity. ROR is a key part of the data. We need to connect these articles and these individuals to the institutions where they work. That needs to be done well. The same is true of all persistent identifiers – they allow you to connect up the data at scale. Getting persistent identifiers right means we have a complete and accurate picture of things.

 

**If we're talking about misconduct, then you might need to be able to contact the institution that the author is from. On an individual manuscript, it doesn't matter if there's no identifier – an address will do. But if you find some signal that is on manuscripts at scale, and you've got thousands of them, well, you need an identifier. You can't go through them and try and search for every single one of those institutions.**

 

But in terms of integrity generally, there's also just this point about accountability. Who is accountable for the content of the paper? You've got the individual researchers, and you can identify them. But then who else is accountable? Well, the publisher is, because they are the ones who peer-reviewed it, and they're putting their name on it. Then you've got the institution as well, and they're also accountable. So when it comes to the difficult task of investigating misconduct, having the ROR institutional ID on there means you know who to call.

 


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Do you do any work with funders at all?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

We don't. At least not yet.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

I almost think of funders as more the regulatory or enforcement part. OpenAlex actually uses ROR to identify funders in its funder model as well, because funders are in scope for ROR, and we have lot of them. You may know that Crossref runs the [Open Funder Registry](https://www.crossref.org/services/funder-registry/), which has been curated by Elsevier, and we've just [announced that the Open Funder Registry will eventually be deprecated in favor of ROR](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/). ROR IDs to identify funders is the future.


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

Oh, great! I like that!


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

It may be a while. We're thinking on the scale of about two years or so. But we've got [more blog posts coming out about that](https://ror.org/blog/2023-10-12-ror-funder-registry-overlap/).


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

I saw the announcement about [Crossref and Retraction Watch](https://www.crossref.org/blog/news-crossref-and-retraction-watch/). That's great news.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Yes, it is! Glad you saw it and that you think so. Now, let me give you a chance to make some feature requests. What would make your life easier if ROR did something differently?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

Being able to go down to the departmental level, that would certainly be useful in cases where you're finding an institution where there are tons of problem papers going in, but it's a gigantic institution and they're putting out thousands of papers a month. When you're finding dozens of problem papers coming out in all of these thousands, that might not actually tell us all that much. But then if we were to look at that at a department level, and see that those dozens are all coming from one department, that's a really useful signal.

The last time I did some analysis on that, I think I wasn't able to drill down.  Maybe when some people have got their ROR ID, they're going to have either the top-level one or one that's lower down, not both.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

All of those high-level [relationships are in the ROR record](https://ror.org/blog/2023-02-27-parents-children-and-other-relationships-in-ror/), but in their implementations or in their analyses, not everybody will do that linking. Some do, though. To use OpenAlex as an example again, they relatively recently released in their API a thing they call [institution lineage](https://docs.openalex.org/api-entities/institutions/institution-object#lineage), where you can do a query on an organization to find any parent organizations it may have.


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

Oh that sounds very useful – I will look into that! Thanks!


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

What else do you want to tell us about ROR, or about your work, or about anything at all?


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

There is one thing I'd like to say, which is that the availability and openness of data like this is really important. Because if it is free and open and available, then it's easy to work with. As soon as you get datasets where there are even little barriers to using them, that's an issue. Something like authentication doesn't really hold you back, but you can be using some tool that requires authentication, and then maybe the authentication breaks one day, and suddenly you don't have your data anymore. **Having nice, clean, big, open datasets like this is really valuable, especially for a problem like this one, a problem which does require taking a big step back and looking at all of the data together, and not having barriers in the way of getting parts of it.**

 

That's one of issues around, say, analysis of full-text data. You can get some of it, because it's open access. There's a dataset that [Semantic Scholar](https://www.semanticscholar.org/) pulled together and made available and things like that, but if you want all of it? No, that's just not even remotely possible.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

Even abstracts are difficult. Crossref has done a lot of [work on open abstracts with its Initiative for Open Abstracts](https://www.crossref.org/blog/open-abstracts-where-are-we/).


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

It's a good thing to do, because we do use abstracts in papermill detection. Actually, one point about that, which is maybe a bit tangential, is that every now and then when someone finds a dodgy paper, they retract it, and they change the title to put the word "retracted" in. For me, if I'm trying to use that for training a machine learning model, that's bad: I have to take that out. "Retracted" has to go. But that's okay, I can do that. I can make a little rule to do that. But what happens sometimes is that they change the abstract. The abstract disappears, and then it gets replaced with something like "The publisher has removed this paper." Now that's not useful data anymore. It's just gone. The publisher retracted this one, but we can't help them stop the next one getting retracted. [For more on this topic, see the [NISO Working Group on the Communication of Retractions, Removals, and Expressions of Concern](https://www.niso.org/standards-committees/crec). Comment is open on the working group's best practices draft through December 2, 2023.]  

 

That's the thing I think is really important and valuable about ROR, is that being open and being available, it just makes so much stuff possible that wouldn't be otherwise. It’s also one of the things to say to anyone wanting to get into stuff like this. If you want to do data science on published research, just go for it. You can use the ROR API, you can use the Crossref API, OpenAlex, all this stuff. They're free. Go and do it. And that's a great way for people to learn. I learned tons of stuff by just trying things like that. That freedom is one of the great things that we get from having resources like this.

 

Then there’s serendipitous discovery. If people are able to get into it and just mess around, they won’t just find what they are looking for. They’ll find other stuff as well. And who knows what that might be.

 


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

I'm glad you said that. Having the data be open is a really crucial part of what we think is important about ROR.


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

It's like serendipitous discovery, right? If people are able to get into it and just mess around, eventually, you'll get people just going, "Oh, look, you can do this." And they would never have known if they didn't have the freedom to play around with it, so it's really important.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French 

That's great. Well, thank you for speaking with me.


### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day 

Cool. Thanks. Bye.

{{< callout color="green" icon="no-icon" >}}

Questions? Want to be featured in a ROR case study? Contact <community@ror.org>.

{{< /callout >}}
