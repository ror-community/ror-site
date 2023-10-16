+++
title = "Case Study: Clear Skies, Research Integrity, Data Science, and ROR"
date = "2023-10-16"
draft = false
tags = ["Adoption", "Integrations", "Community", "Case Studies", "Machine Learning"]
categories = ["case-studies"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/blog/clearskies/clear-skies.png"
images = ['/img/blog/clearskies/clear-skies.png']
author = "Amanda French"
description = "Adam Day, Director of Clear Skies Ltd., discusses how he works to improve research integrity with tools like Papermill Alarm, why such tools can assist but can't replace human investigators, and what's so important for data scientists about free and open identifers like ROR"
+++

Adam Day, Director of Clear Skies Ltd., discusses how he works to improve research integrity with tools like Papermill Alarm, why such tools can assist but can't replace human investigators, and what's so important for data scientists about free and open identifers like ROR. 

{{% callout color="green" icon="no-icon" %}}

### Key quotations

"Having institutional identifiers in there, it's part of the puzzle. And it's an important part of the puzzle, really important. But there's limits to data analysis. Data analysis has got to help people to do the investigations."

"If we're talking about misconduct, then you need to be able to contact the institution that the author is from, so you need to have the institution on there. On an individual manuscript, it doesn't matter if there's an identifier. But if you find some signal that is on manuscripts at scale, and you've got thousands of them, well, you need an identifier. You can't go through them and try and search for every single one of those institutions."

"You've got the author, you've got the publisher, and you've got the institution, and all three of them are accountable for the content of that paper. Having them all uniquely identified on the paper means you can find who is accountable, and that's all linked up. Without that, it all becomes that much harder."

"Having nice, clean, big, open datasets like this is really valuable, especially for a problem like this one, a problem which does require taking a big step back and looking at all of the data together, and not having barriers in the way of getting parts of it."

-- Adam Day, Director, Clear Skies Ltd.

{{% /callout %}}

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Thank you so much for agreeing to talk to me about ROR. Can you begin by telling us your name, title and organization? 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Adam Day, Director of [Clear Skies, Ltd](https://clear-skies.co.uk/).

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Lovely. Tell us about Clear Skies Ltd. When was it founded? What does it do? What makes it special? 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Clear Skies was founded in, let's see, the first quarter of 2022, so not very long ago. The whole idea behind Clear Skies is to take data from multiple sources, bring it together, and use it to help research integrity. But I mean that in quite a broad sense: not just research integrity as in dealing with misconduct or paper mills, but the whole process. What can we do by bringing data together to help me make this a better, stronger, more robust process?

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I know that your flagship product is [Papermill Alarm](https://www.science.org/content/article/fake-scientific-papers-are-alarmingly-common), but does Clear Skies have other products that you're working on?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
We do. That being said, Papermill Alarm has been a much bigger success than I had expected. Initially, Papermill Alarm was one pipeline for detecting paper mills, but then we came up with a bunch of other pipelines for detecting paper mills, and it became clear that referring to a lot of different pipelines with different names was just confusing to everyone. So we just call all of them Papermill Alarm now, but there's actually a lot of different things going on in there. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
When and where did you personally first hear about ROR? 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
I was at a FORCE11 conference in Edinburgh, and [one of the sessions was about ROR](https://doi.org/10.5281/zenodo.5770970). I had been dealing with this issue in data analysis of wanting to do analysis at an institutional level. You want to say, "Okay, which institution is producing the most papers on some topic?" or "Which is the best-cited institution on some topic?" or maybe "Which institution in which country is growing the fastest?" Those are the sorts of questions that you might want to ask, and if you only have, say, addresses to go on, that's a total nightmare. Completely impossible. 

There are other systems for identifying institutions, but either they were, let's say, not easily connected with the data, or they were in some way imperfect and not very good for those kinds of tasks. I guess Ringgold would be an obvious example, where it's got a lot of coverage, but actually, you can't just connect it to your own data. You've got a bunch of addresses, and that's all you've got. But then when you look at a dataset like [OpenAlex](https://openalex.org), a very large part of it has these ROR IDs, and you go, "Great, I could just use that and identify an institution very easily."

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
And then for what purpose did you begin using ROR?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
With Clear Skies, there were a few use cases around it. I'd say the first thing was actually in validating work that we've done with the Papermill Alarm. You've got all these papers, and the Papermill Alarm is saying, "These look like there could be problems." And you say, "Okay, well, which institutions do they come from?" And you compare that with the institutions that have had retractions and it turns out, there's agreement there. So that becomes useful. It's not proof that  this is all working, but it's a useful indicator that things are aligning with the other evidence that's out there. 

We would expect something like paper milling to be limited to particular institutions, because you'd assume there's some sort of culture there where people say, "Hey, you should use a paper mill." Or maybe they're running a paper mill, and maybe all the grad students get told, "Okay, here's how to write a paper," and they're all writing fake papers. So you would expect there to be what we might call heterogeneity there, where you're finding particular institutions where a lot of this is going on, rather than finding randomly distributed alerts. If they were randomly distributed, you would assume that it's not working -- it's just finding random papers by accident. But that wasn't what we saw. What we did see was focused on particular institutions, and it happened that those same institutions already had a bunch of retractions. It was really useful from that point of view. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
How important do you think that organization correlation is in detecting paper mills? What are the other some other factors that are important in that?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
I think there are a lot of a lot of factors in there. And really, the fundamental thing is that there has to be solid, human-in-the-loop analysis of every case. It would be fantastic if we could just have this wonderful, magical machine that could detect all of the fraud and deal with it for us. But the reality is that you need to have humans in there to check the data that's coming out.

Sometimes, you could have input data that is incorrect, which is fairly unusual these days, but it does happen. Sometimes the wrong piece of input data gets into your analysis, and that can affect the output, so you need humans there to check just for that, because that is a fact of life. When it comes down to automated detection, I don't think there is an automated detection method that is 100% accurate, and I'm not sure if that's even possible. There need to be humans who are looking at things and saying, "Okay, what would we consider to be good evidence of misconduct?" And that's going to be partly down to them doing particular investigations, but also down to their judgment, right? And human judgment really does have to come into this. 

There could be things like, for an example, maybe a plagiarism case, where you find two papers that are basically identical. And so you say to the author, "Hey, look, we found these two papers, your paper and this one, and they're basically identical. Did you copy this paper?" And the author might come back and say, "No, I didn't. It just coincidentally happens that I wrote an identical paper to this person." That is an excuse that comes up sometimes. And, of course, the judgment has to be there to say, "Don't believe you. Sorry." Because, you know, really, the chances of that happening are really small. If it's a small piece of text, that could happen by accident. People might remember something they read and then not realize that they didn't write it themselves. Stuff like that I'm sure does happen. But when it's a big, long paper, and it's all been copied, and they're making that excuse, it's not believable, and so human judgment has to come into that. 

That's it. **Having institutional identifiers in there, it's part of the puzzle. And it's an important part of the puzzle, really important. But there's limits to data analysis. Data analysis has got to help people to do the investigations.**

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
What other persistent identifiers do you use in Papermill Alarm?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
There are lots of things that come into the analysis. [DOIs](https://doi.org), frankly, are absolutely critical, really useful things. Then there's [ORCID](https://orcid.org), which we use to some extent, although a lot a lot of ORCIDs aren't there, and a lot of data that you might want from ORCID isn't in there. And there are some issues around using it with particular datasets still. They may have fixed it now, but there used to be an issue with OpenAlex, that they would infer that people were the same person, and then you would get multiple ORCIDs with the same person, and then you'd find that the wrong ORCID was on the wrong paper. So you can use them to some extent, but that can have limitations. 

And I think the ROR identifier gets added from the affiliation string?

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Yes! We actually just published [a case study with OpenAlex](https://ror.org/blog/2023-09-13-openalex-case-study/), which you may want to read, and you're right, they did just [release a new version of OpenAlex Authors](https://groups.google.com/g/openalex-users/c/jzlh1Mp_s-g), so I think they've fixed those issues you noticed. They did some pretty heavy lifting in terms of doing that string to ROR ID matching, too, and apparently it's working quite well. The large majority of OpenAlex materials do have ROR IDs, and they are using exclusively ROR IDs for organizations right now. 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
One thing I found is that you can match to a ROR ID by searching for the institution in the OpenAlex API, and it seems to be quite clever in that, so we tried the same thing with with the [ROR API](https://ror.readme.io/docs/rest-api). And with ROR's API, you could put something in like "LSE" and it would find all the institutions that have LSE as a an acronym. The first one was "[Laser Scan Engineering](https://ror.org/05rg8s453)." I thought, "Okay, I feel like when people say LSE they mean London School of Economics; it's a really well known institution." But OpenAlex got it. And if you put "LSE" in there, the London School of Economics was the first result. It seems to be quite handy for matching up the string. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Well, I'll say two things about that. One is that we are actually working on a new affiliation matching service. [The one that we currently have in our API](https://ror.readme.io/docs/affiliation-parameter) actually I think does very well, and many people use it a lot. Nevertheless, in collaboration with [Crossref Labs](https://labs.crossref.org) we are working on a new version of that. 

The other thing I'll say is that OpenAlex has the advantage of having all of that DOI data. I would imagine that their model is doing something like "Hey, which 'LSE' is the most common one that people are citing as an affiliation in their papers?" We don't have that information, and our API is strictly for what's in ROR. Our affiliation matcher [does much better when you have longer strings or location information in them](https://ror.readme.io/docs/match-organization-names-to-ror-ids), and those acronym matches in particular are kind of tough.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
One thing I have had fun with in the past with ROR data was taking [those latitudes and longitudes](https://ror.readme.io/docs/ror-data-structure#addresses) and then doing visualizations with them. It can be really interesting, because sometimes you've got, say, a particular subject area, and there's tons of stuff coming out, and it's coming from a bunch of different institutions -- but then you actually look at them and see, "Oh, they're all in one town, or they're all really near each other." So that's probably one group of people who are all into this thing, right, in one place. 

You can make national maps as well, you know, choropleths. You can do all that stuff with it. It's quite fun for showing national trends, depending on what you're looking at. You can also show links, as well, like, "Okay, which institution cites which other institution?" It's great fun.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That does sound fun!

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
That's nothing I do at Clear Skies, really, but that is something that I've done before, and ROR is really good data for that. It's just all there. In the past, I used to have to geocode things manually. That was not fun. That was absolutely the antithesis of fun.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I know of at least one example of people who are using that location data in ROR  for visualizations, and I'm sure there are more.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
We had an interesting finding with paper mill data at Sage, not Clear Skies. In cases where we had individuals who were known to be involved in paper mills, cases where we knew that the authorship had been sold because they put the data online so you could see it, in those cases what we found was that quite often, one author on the paper would be a first-time author, and they would be in a different country to the other author. 

If you just take a bunch of random papers and ask, "How common is that?" it's very uncommon. It's very rare that someone writes their first paper with people in a different country. Whereas in this particular group, it was really common, because this is how people were buying authorship, right? They were doing their first paper, and they just had to find someone who would sell them an authorship slot, because they couldn't write their own paper. 

That was really interesting. And it's not enough of a smoking gun that you could say that it is evidence of misconduct, but it was actually quite a stark difference between the two datasets. With random papers, you don't see that, whereas with paper mills, you do, a lot.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That makes a lot of sense, because, of course, most first-time authors don't have that kind of network. They're working with people in their own institution. And most first-time authors in the sciences, I'm sure, are working with their own advisor in their own lab. Can I ask, do you do this inductively, where you look for interesting patterns in the data? Or do you start out with a hypothesis and then see whether or not it checks out based on your analysis?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
The original Papermill Alarm started out with a hypothesis about what was going to be detectable and what wasn't. And it turned out to be a lot more than I'd expected. But there's been plenty of times when I've been digging through data, which I do a lot. And then you'll see something and think, "Oh, maybe I could look at this." And it turns out that the thing you're looking at is quite important. And also, more often than not, the thing you're looking at turns out to not be important. So hypotheses come up, you know, as you're digging through stuff, and you find stuff that way. Most of the time, you have an idea, you try it out, it doesn't work.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That sounds like good science, I'd say. Going back to something we were talking about earlier, how do you think that persistent identifiers like ROR can help with the overall project of trying to ensure research integrity?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
On the one hand, it's just about data integrity, right? This is a key part of the data. We need to connect these articles and these individuals to the institutions where they work. That needs to be done well. **If we're talking about misconduct, then you need to be able to contact the institution that the author is from, so you need to have the institution on there. On an individual manuscript, it doesn't matter if there's an identifier. But if you find some signal that is on manuscripts at scale, and you've got thousands of them, well, you need an identifier. You can't go through them and try and search for every single one of those institutions.** 

This is actually something that comes up a lot: how to connect the conversation between publishers and institutions, because it happens on an ad hoc basis. There may be some organized way of doing it now, but most of the conversations I have, people are saying, "Well, it'd be really great if we could just automatically find the right person at the institution who we need to talk to."

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
ROR doesn't have any kind of institutional contact information in the records, but you could connect ROR to some database that does have contact information for research integrity officers.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
That's what I'm thinking. I think it's part of that solution, but that's something that I think people are saying needs to come in the future. I think something like ROR can fit in with that. 

But in terms of integrity generally, there's also just this point about accountability, which generally should go through everything. A research paper should be accountable for its results. You should be able to read that research paper and it should be entirely internally consistent, and you should be able to reproduce the results with just the paper. Papers might come with code or data to help you do that, but the paper itself should be really all you need. 

And then, who is accountable for the content of the paper? Well, you've got the individual researchers, and you can identify them. But then who else is accountable? Well, the publisher is, because they are the ones who peer-reviewed it, and they're putting their name on it. Then you've got the institution as well, and they're also accountable, right? 

**You've got the author, you've got the publisher, and you've got the institution, and all three of them are accountable for the content of that paper. Having them all uniquely identified on the paper means you can find who is accountable, and that's all linked up. Without that, it all becomes that much harder.**

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Do you do any work with funders at all? 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
We don't, although I do think they are also part of that accountability framework.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I almost think of funders as more the regulatory or enforcement part.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Yeah, the author would be accountable to the funder rather than the other way around. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Precisely. 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Yeah, I think so. I saw that [OpenAlex has got funder data](https://docs.openalex.org/api-entities/funders) now, but I haven't had a good play around with it. I do think there's something interesting there. If you're finding misconduct in research, and it's been funded, the funder would probably want to know, 

The other question, of course, is how funding could also be a signal that can be used the other way for saying, "Okay, this seems less likely to be problematic, because it's been funded by someone who we think is doing a good job of assessing who they're giving the money to." Something like that. I think there's different sides to it. One thing I have done in the past was analyze papers to compare the ones with funding statements with the ones that don't have funding statements -- which get cited more? And, significantly, it's the ones with the funding statements that have more citations. That's ignoring what those funding statements say, who they're from, how much funding the person got, or anything like that. Simply having the statement gave you a different distribution, so you'd have more citations. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
How fascinating. 

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
And funding isn't just about money, it's also about the culture of the subject area, right? It could be, if there's funding, that might mean it's more likely to be biomedical and more likely to be pharma. And then that means there's a lot more money going into this same area where people are citing each other. That might not necessarily be a sign of quality, but it's still a part of the equation if you want to do things like citation prediction.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
OpenAlex actually uses ROR to identify funders in its funder model as well, because funders are in scope for ROR, and we have lot of them. You may know that Crossref runs the [Open Funder Registry](https://www.crossref.org/services/funder-registry/), which has been curated by Elsevier, and we've just [announced that the Open Funder Registry will eventually be deprecated in favor of ROR](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/). ROR IDs to identify funders is the future.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Oh, great. Great. Yeah. I like that.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
It may be a while. We're thinking on the scale of about two years or so. But we've got [more blog posts coming out about that](https://ror.org/blog/2023-10-12-ror-funder-registry-overlap/).

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
I saw the announcement about [Crossref and Retraction Watch](https://www.crossref.org/blog/news-crossref-and-retraction-watch/). That's great news.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yes, it is! Glad you saw it and that you think so. Now, let me give you a chance to make some feature requests. What would make your life easier if ROR did something differently?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Being able to go down to the departmental level, that would certainly be useful in cases where you're finding an institution where there's tons of problem papers going in, but it's a gigantic institution and they're putting out thousands of papers a month. When you're finding dozens of problem papers coming out in all of these thousands, that might not actually tell us all that much. But then if we were to look at that at a department level, and see that those dozens are all coming from one department, that's a really useful signal. That means you could go to the institution and say, you know, "Maybe you want to go and have a chat with the people in that department." That sort of analysis from my perspective would be really useful. 

With very large institutions like the [Chinese Academy of Sciences](https://ror.org/034t30j35), where it's actually a bunch of different institutions, it's great that it's split up in ROR. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Wow, 143 child organizations for the Chinese Academy of Sciences. [Aerospace information Research Institute](https://ror.org/0419fj215), [Institut Pasteur of Shanghai](https://ror.org/00w78qy64), [Institute of Acoustics](https://ror.org/00v8rqv75), tons and tons. This is a great example. I can't believe I've never looked at this record before. And I'm sure some of those child organizations have their own children as well.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day

The last time I did some analysis on that, I think I wasn't able to drill down.  Maybe when some people have got their ROR ID, they're going to have either the top-level one or one that's lower down, not both. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

All of those high-level [relationships are in the ROR record](https://ror.org/blog/2023-02-27-parents-children-and-other-relationships-in-ror/), but in their implementations or in their analyses, not everybody will do that linking. Some do, though. To use OpenAlex as an example again, they relatively recently released in their API a thing they call [institution lineage](https://docs.openalex.org/api-entities/institutions/institution-object#lineage), where you can do a query on an organization to find any parent organizations it may have.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
Okay, yeah. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
What's new and next for you and for Clear Skies?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
At the moment, one thing we're doing is building a dashboard for publishers so they can look at trends relating to paper mills in their history, and that's quite useful. Publishers will be able to take a step back, so instead of looking at individual articles they can look at trends over time. And then they can say, "Almost all of our content is fine, but we've got one journal which looks like it might be getting targeted." And then they can go and look into that a bit more carefully. 

One thing that ROR might actually come into is converting that dashboard to work for institutions so that they can do essentially the same analysis. That's why I think it would be useful to have departments, so that institutions could look at that dashboard and say, "Okay, we're mostly fine, but this one department seems to have a lot of alerts coming out." That could help them to identify a problem and go and deal with it from a high level. They'd be able to deal with a lot of papers all at once rather than just dealing with each one as it comes up, which is pretty tough.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
What else do you want to tell us about ROR, or about your work, or about anything at all?

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
There is one thing I'd like to say, which is that the availability and openness of data like this is just really important. Because if it is free and open and available, then it's easy to work with. As soon as you get datasets where there's even little barriers to using them, that's an issue. Something like authentication doesn't really matter, doesn't really hold you back, but you can be using some tool that requires authentication, and then maybe the authentication breaks one day, and suddenly you don't have your data anymore. **Having nice, clean, big, open datasets like this is really valuable, especially for a problem like this one, a problem which does require taking a big step back and looking at all of the data together, and not having barriers in the way of getting parts of it.** 

That's one of issues around, say, full text data. You can get some of it, because it's open access. There's a dataset that [Semantic Scholar](https://www.semanticscholar.org/) pulled together and made available and things like that, but if you want all of it? No, that's just not even remotely possible. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Even abstracts are difficult. Crossref has done a lot of [work on open abstracts with its Initiative for Open Abstracts](https://www.crossref.org/blog/open-abstracts-where-are-we/).

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
It's a good thing to do, because we do use abstracts in paper mill detection. Actually, one point about that, which is maybe a bit tangential, is that every now and then when someone finds a dodgy paper, they retract it, and they change the title to put the word "retracted" in. For me, if I'm trying to use that for training a machine learning model, that's bad: I have to take that out. "Retracted" has to go. But that's okay, I can do that. I can make a little rule to do that. But what happens sometimes is that they change the abstract. The abstract disappears, and then it gets replaced with "The publisher has removed this paper." Now that's not trainable data anymore. It's just gone. The publisher retracted this one, but we can't help them stop the next one getting retracted. It's actually something where there are no guidelines, because no one's really done this stuff before, and it's quite difficult to get a message like that out to everyone, to say, "This is really important data, and it needs to be handled in a particular way." It's quite a difficult message to get out. 

But yeah, I guess that's it. That's the thing I think is really important and valuable about ROR, is that being open and being available, it just makes so much stuff possible that wouldn't be otherwise. And actually, that's one of the things to say as well to anyone wanting to get into stuff like this. If you want to do data science on published research, just go for it. You can use the ROR API, you can use the Crossref API, OpenAlex, all this stuff. They're just free. Go and do it. And that's a great way for people to learn. I learned tons of stuff by just doing that, by just trying things. I really think that's one of the great things that we get from having resources like this.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I'm glad you said that. Having the data be open is a really crucial part of what we think is important about ROR, because it makes it easier for analysts and even for software developers.

### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day
  
It's like serendipitous discovery, right? If people are able to get into it and just mess around, eventually, you'll get people just going, "Oh, look, you can do this." And they would never have known if they didn't have the freedom to play around with it, so it's really important.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That's great. Well, thank you for speaking with me. 
  
### {{< figure src="/img/blog/clearskies/adam-day.jpg" class="round-figure" alt="Adam Day" >}} Adam Day

Cool. Thanks. Bye. 

{{% callout color="green" icon="no-icon" %}}

Questions? Want to be featured in a ROR case study? Contact <amanda@ror.org>.

{{% /callout %}}
