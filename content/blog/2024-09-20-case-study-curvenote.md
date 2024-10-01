+++ 
title = "Case Study: Next-Generation Publishing Platform Curvenote and ROR" 
date = "2024-09-20T11:13:35-04:00"
draft = false 
tags = ["Interviews", "Publishing"] 
categories = ["Case Studies"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/curvenote/curvenote-logo.png" 
images = ['/img/blog/curvenote/curvenote-logo.png']
author = "Amanda French" 
description = ""
+++ 

{{< figure src="/img/blog/curvenote/curvenote-logo.png" class="featured-figure" alt="Curvenote logo" >}}

TKTK

{{% callout color="green" icon="no-icon" %}}

### Key quotations

"You see a ROR, you copy it into your document, and then it turns into the name of the organization with all of the information directly available in a hover reference."

-- Rowan Cockett, Founder and CEO, Curvenote

{{% /callout %}}


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Thanks for speaking with us. Tell us about [Curvenote](https://curvenote.com). 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett

Curvenote is a "What You See Is What You Get" ([WYSIWYG](https://www.merriam-webster.com/dictionary/WYSIWYG)) editor as well as a publishing tool for scientists. We're trying to make both the way that science is authored and the way that science is published a lot easier. We're also thinking about how scientific metadata is included, trying to make sure that scientific publications are born with metadata all the way through. 

We've done some really exciting integrations with ROR, as well as with [ORCIDs](https://orcid.org) and [DOIs](https://doi.org) and [RRIDs](https://rrid.site/). For instance, one thing we're thinking about is that as authors are writing, instead of having a citation manager where you're copying the name and the title and the year into your text as a text-only citation, you just copy in the persistent identifier and then it automatically queries all of the scholarly databases against that citation for you. And then you get a very beautiful site that you can publish out of that. I use the word "site" rather than "journal article," because I think one of the things that is difficult for scientists to do is to have a portfolio of their work. When you're using the publishing ecosystem, your work is scattered all around the place. It's really difficult to show all of the papers and articles and blog posts all in one collection on a landing page on your website. 

We're also elevating a lot of scientific computational work by letting people show off interactive [Jupyter Notebooks](https://jupyter.org/). I think by bringing all this a little bit closer together and into the scientist's control, you can experiment a lot more with how you're presenting your work. You can push on things  reproducibility and interactive apps that are educational rather than focusing only on novelty in the scientific paper sense. What we're trying to make possible is the ability to continually update that project, that paper, that article, that blog post, and to make sure there's good metadata throughout that entire process such that it's actually integrated into the scholarly ecosystem.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Would it be fair to say that Curvenote is a digital-first platform? 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Oh, yes. It creates beautiful PDF documents, but that is not the point. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Does this come out of your own scientific training? 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Yes. I have a background in Geoscience. I started creating interactive visualization tools for my peers in undergrad and understood that the web is just an exciting platform on which to disseminate these things. I saw my peers tinkering with geologic models and seeing the results right away, and there was this really close interactivity loop where they could discover things just by using those models. That was something that I learned in undergrad. I started and then sold a company around that over the next few years. Then I was working at that acquiring company for about four years, working in large-scale version control system collaboration for environmental science, civil engineering, and mining companies, and creating platforms for those companies. I was in charge of a large team over there. 

While I was doing that, I was also doing my PhD in Computational Geophysics, so lots of open source technology, lots of Python, and lots ofJupyter. We were deploying courses that use those interactively in the classroom, and we took those on lecture tours. So we saw how powerful it was to put research tools directly in the hands of students all over the world, and rather than giving them a PDF with a picture of something, you give them a direct connection to the computation. With a PDF, there are no avenues back to where this came from. The actual scientific work behind that PDF document is all just lost. That was a really eye-opening experience of integrating reproducible science and open source communities into the medium that you're using to communicate. 

And while I'm doing that, I'm also going through scientific publishing and, like, getting my PDF paper rejected from multiple journals. Just honestly the worst. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
And how long did it take to get those rejections? 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
I was running a 65-person team at the same time as I was trying to finish my PhD, and I was in spurts of trying to get my PhD over the line, so it took three years for me to publish that paper. And the most disappointing thing is that at the end of those three years, someone reached out with a dataset that could use my work. That was the first time that had happened, and we completely missed out on the collaboration possibilities. If I had published right away and got that out there, I could have collaborated with that person at the start and made a much bigger impact. 

My research would have been much more applicable with a field data set. I was doing theoretical modeling, and I did the [first 3d model and inversion of a vadose zone dataset of infiltrating water in an agricultural setting](https://doi.org/10.1016/j.cageo.2018.04.006). And that was all theoretical and computational: I demonstrated that this was possible, but not in a field sense. I didn't actually go and apply it anywhere. But there are people who are collecting data that I could work with, and because of the scientific publishing ecosystem, I had zero capability to work with those people, and I think it limited the impact of that research project. By the time the research was published, I was no longer working on that project, and I think that's just a shame, honestly.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
And tell us about how [MyST Markdown](https://mystmd.org) fits into this. 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
I started Curvenote with the idea that you need that direct connection to the publishing. That experience I described taught me that you need to be able to get your work out there and you need to get feedback right away. It needs to be born on the web with metadata right from the start. I think most scientists do their writing in Word documents, so that was the experience that we were going after for Curvenote: a What You See Is What You Get text editor that integrates with computation and metadata in a much richer way. 

With the computation aspects, I think what I underestimated was that the communities who work in Python andJupyter are much more used to text markup than to working in WYSIWYG editors. There are ways to work across those spectrums, but to enable that reproducibility, we needed to move into that text markup space. So we joined the [Executable Books project](https://executablebooks.org/en/latest/), we [open sourced all of Curvenote's command line tools](https://github.com/curvenote/curvenote), and that was the start of this [MyST-MD](https://mystmd.org) project, which is growing and helping the [Jupyter Book ecosystem](https://jupyterbook.org/en/stable/intro.html) to create tutorials and educational materials. The MyST-MD project has recently [become part of the Jupyter Books](https://executablebooks.org/en/latest/blog/2024-05-20-jupyter-book-myst/) project officially, which is really exciting. Jupyter [won the Open Science Award from the White House](https://www.whitehouse.gov/ostp/news-updates/2024/03/21/white-house-office-of-science-technology-policy-announces-year-of-open-science-recognition-challenge-winners/) in the spring, and it's making significant Open Science progress. We are bringing science communication tools to the core of Jupyter and integrating those metadata tools into the fabric of the Jupyter ecosystem.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
That's fascinating. I didn't realize all the connections to Jupyter.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Yeah, we've been working very hard. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
How does Curvenote address the concept of peer review?

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
There are different ways to publish MyST sites. We have a publishing system for Curvenote, so you can publish something yourself and just post it, but if you want a DOI on that, if you want to incorporate it into a scientific journal and have some of these better integrations into the scholarly system that are archival and that involve peer review, for example, that needs a system around it. And yes, the Curvenote publishing system and platform enables the creation of peer-reviewed journals. We're working with AGU, the American Geophysical Union, which is a large-scale publisher. They're thinking about how to do these web-first papers, these computational articles, and they're experimenting with that and running that on the Curvenote platform. And that's the same thing we're doing with the [Microscopy Society of America](https://microscopy.org/). 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
 Got it.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
The [North Carolina School of Science and Mathematics](https://www.ncssm.edu/) is also using Curvenote -- that's high school students learning about ORCIDs and DOIs for the first time! There's a teacher there who wanted his students to be able to have a breath of fresh air in the science ecosystem and to learn what it would be like for them to publish in six years. And that means they're publishing immediately. They're getting DOIs. They have ORCIDs. It's born open access, and it's born with reproducibility,  and it's born with the datasets integrated. It's just so cool. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Very cool! There's so many people experimenting right now with new publishing models, new peer review models, new models of open preprint dissemination, that kind of thing. And it's so clear that it's a generational type of thing. I don't think younger people coming into science have the patience for the kind of print-first model that persists, which has just been replaced with a PDF in place of print.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Yes, exactly. And that's the way that we're framing Curvenote, is as a next-generation tool, a platform where scientific computation, scientific reproducibility, and scientific metadata are deeply integrated. And what does "next generation" mean? It means that it's easy enough for a high school to get up and running and host their own journal! They can do that by themselves, and it's open  access, and it's better than most journals out there. I think that's it's just exciting. Eighteen-year-olds can do this, so there's no excuse.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Tell us about how you're using ROR now and how you might intend to use it in the future. 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
There are a couple of different ways. There are the ROR IDs in affiliation metadata that we're collecting, so inside of Curvenote, you can add your ROR ID in the metadata, and that's collected along with your affiliation. And then we have just started integrating that into the MyST ecosystem, so now, when you paste a link to ROR, you can hover over that anywhere in your document, and you can get integrated metadata. 

And again, this represents the ideal of a scholarly ecosystem that is rich with API and structured data, and our authoring tools need to be able to show the value of that as you're working. You see a paper, you copy the DOI, and then you don't have to think about the references, you don't have to think about APA formatting. **You see a ROR, you copy it into your document, and then it turns into the name of the organization with all of the information directly available in a hover reference.** 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Cool. And do you have a model for funding information in Curvenote?

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
We don't in Curvenote; we do in the MyST ecosystem. As part of the work with through the Sloan Foundation and through AGU that was collecting the funding information and making sure that that's easy to author in a YAML-based format. And so this this is something that is presentable to authors that they can write their funding information, have a couple either DOIs we focused on that Crossref funder DOI, as as the main integration point there, right.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Right. And I think that is currently the standard for a funder identifier. But I don't know whether you saw that Crossref did announce a few months ago, that over the long term ROR will be the standard for identifying funders as well as research organizations. So we're in the process of doing a lot of curation and ROR, to make sure that all the funders are represented. And Crossref is working to make sure that specifically ROR IDs can be accepted as funder identifiers in the DOI schema. So just to be aware that that's coming over there.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
We will we will make those changes.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Yeah, and those are DOI under registry IDs are DOI so they're not going to go anywhere. But what will happen is that it will stop being curated. So new funders will not continue to be added to the funder registry and so on  that. So,

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
okay. Okay, that's, that's,

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
that's the practice. Okay,

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
that's, that's good to know. Yeah. And I yeah, I think, again, like, this is something where if we can have wide adoption of these missed markup languages, we  Currently, there's 15% adoption of the MyST language in the scientific documentation community, and that's actually quite large. That's quite good. Yeah. And so

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
that's quite large. Yeah.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
So that yeah, that's, that's active documentation for projects. And that there's a couple of caveats in there. But that's, that's 15% right now. And so we're in the process and working with the Python community to bring them over into this mist ecosystem. And this is  one of these entry points to a large part of the scientific computation ecosystem. That is teaching people how to author in this markup language, providing metadata in a structured way, and then coming all the way all the way back. And so being a part of the Jupyter ecosystem, and indirect tool there, we're starting to bring mist or over the coming years, at least, that will be a default language that's available. And then we're starting to  integrate that into the fabric of how, how scientists are authoring computational documents and computational articles.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Exciting. Can I see a random question, you know, in editing, I may move this backward or something, but um, mist is a flavor of markdown. Is that correct? How different is it from regular markdown?

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
It's, um, Yes, it is a flavor of markdown. We're pretty loose in the way that we talk about the mist ecosystem, because there's really three things under there. There's the flavor of markdown, there is what after that has been parsed? What is the structure of that and that that piece is much more similar to a Jets idea is there's basically a one to one mapping of that next generation scholarly structured data to what is in Jats. XML today. And so that's, that's the spec information of that we're working on in the missed community. And so there's a missed spec, which is describing that. And then there are the command line tools, which make it very, very easy to get up and going. And that that is more than markup language that's like, again,  you paste a DOI in there. It allows you to have references, it talks to various external services, it brings that experience that authoring experience together. Great. Good to know, three, three things. Yep.

So

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I'll probably wrap it up fairly quickly here. So just a couple more questions. And I don't know whether you've got any, any thoughts about this? But um, do you have any feature requests for ROR? Is there anything that you wish ROR did that it's not currently doing? Or even organizational project? types of requests?

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
I don't ever I think, no, I would say at this stage? No, I are. I think we are in the process of integrating ROR more deeply. And again, hopefully, by this time this blog post gets out, we'll spend a little bit more time on that and make sure that the information shows up in the right places. And that I think, is where we're at so far.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
Okay, great.


### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
How was ROR to integrate, technically? Was it difficult? 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
It took less than 45 minutes, and then we were up and going. 

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French

Amazing. That's great to hear. What else would you like to say about your work, or about ROR? 

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Right? Well, no, I think I've said said some of the things that I'm thinking about in terms of  the the next, the next few years in scientific publishing are going to look very different. And I think there's this wave that's getting built up over this time that, like, we've been working for five years on mist and the underlying authoring tools and the scientific publishing ecosystem and  players in that space, don't see that coming, because you're not really paying attention to educational tutorials that people are publishing by themselves, or blog posts that are using this or scientific documentation. And that's where people are doing their work. That's  where people work every single day. And if we are extending the publishing ecosystem out from that, and deeply integrating it into just the fabric of how people are working daily. That is a very different future than how we think about scientific publishing today, it's much more about science communication, and how are you getting feedback as fast as possible? How are you directing micro expertise and like, for example,  thinking about like, how to integrate with services,  pre review, to bring that attention,  closer to when you're doing a statistical analysis, you can get your figure out in front of people, your methods section out in front of people. And that's a possibility that is being enabled by these various communities working together. That is a radically different reimagining of how science, how it helps the science infrastructure is supporting the work and communication of scientists in a way that  it can help support today's publishing ADC  to wobbly infrastructure. But it doesn't have to just be that  we can work. We can work and share and do that as fast as possible and that can be supported by The scientific, the scholarly infrastructure as well, which again includes DOI, nor gates and doors and things  that. Yeah, I think that's it's an exciting vision and like, it's happening. Yeah.

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
And I think you're, I think you're very smart to a partner is the right word, but to be connected to things  Jupyter, I mean, the more it's  , you know, tools that people use all of the time. At one point, Jupyter was probably itself kind of a startup that nobody knew about, and you know, was just a tool used by a few different people. And then it's, then it became everywhere, and it became something everyone was using all the time, because it filled a need.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Yeah, yeah, I think there's, there's a great TED talk called How to start a movement. And it's a three minute TED talk, and it is  a dance party. And  it, why I'll send it to you afterwards, except the thing is, yeah, they take them there is that like, you need to join the things that are already existing and put your effort behind them. And like, it takes a different leadership to join these movements rather than the start your own thing. And so this is  very much our approach is to reinforce existing communities, and bring bringing new experiences to life inside of those and be that strengthening and connecting tissue that I think is somewhat lacking in the in how scientists experience the scholarly ecosystem in their day to day work is they have DUIs, they use Google Scholar, they see the like, list of papers that cite them, but they don't, they don't feel or when they put something and they don't  have that direct connection to adding metadata in the way that they should. And it should be, it should be tangible. They get they get  this hit of dopamine when they like,

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
I mean, the UI is actually really habits because mostly when, because you can see it, right? Most other systems. You know, they're much more form based systems, right?  yours is an authoring system. So you're seeing it as you're writing, which is somehow different than  you're faced with yet another form, and you're filling it out in a form. And it's perfectly nice, it's a perfectly fine experience, you know, and there's a little pop up that will allow you to choose it. But what I  about your resume is you can just  , you know, write it and it's all that enriched information right there, as you're writing, as opposed to, when you're filling out a form. I did like, you should be able to see all these kinds of connections underneath and have that be kind of  people who don't work, actually. But people who don't code, people who don't really work with a lot of data or a lot of metadata, often have a hard time understanding the the importance of persistent identifiers. But I think it helps when people can see it visually, this is connected to this knot of information.

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
Yeah, I want to maybe just show you  this in this, this is  a little bit of a different take on this. So this this is a lab group website that this lab group has wanted to go back. And they've been around for  two and a half decades, and they want a portfolio of their research work. That because right now, it's scattered across like, hundreds of journals and conference proceedings and theses, which you can't see. And  this, this research group is  at the forefront of geophysical inversion. So this is where I did my, my PhD. And so this is why I care about this group as well. Because that they're they're taking all of their documents and  taking these back to  presenting them in a totally in a beautiful way, right from the start. And one of one of the things that in the same way you can inside of this document, you can cross reference a thicker, but that's something that also happens across the scholarly ecosystem, but isn't, isn't possible today. As you can't say  in your paper, I want to reference figure two or equation five. However, what we are working on and this is  brand new as of a month ago, it's this idea of embracing that, that network across and so I can now cross reference somebody else's figure in somebody else's paper and it shows up immediately. That goes for equations that goes for educational content. For example, for glossary is where you're defining all sorts of terms  collections and venues and submissions and compendiums of research and notebooks. And  the Jupyter ecosystem, and you're all the way down in this  list of terms, but you're also you haven't lost your place in reading. So you can  explore a side quest and come back to your reading experience. And then this should also work with computational interactive materials across the research spectrum. And then I can go and click on the link and actually see, where did that come from? And I come back in it's like, oh, cool. There's, there's where it is in context. Okay, where's the code for that? And I come back, and it's like, okay, now I can actually, like, explore all the way back to where did this come from? And so again,  thinking about standing on the shoulders of giants as  the mantra of science. That is, it's a, it's a vastly different ecosystem that is coming soon. That

### {{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Amanda French" >}} Amanda French
  
is a game changer. Yeah. Because citing something is an intrinsic part of science. And it was always  the most you could do. Was it the page level?

### {{< figure src="/img/blog/curvenote/rowan-cockett.png" class="round-figure" alt="Rowan Cockett" >}} Rowan Cockett
  
The most? Yeah. And like, you're saying,  page 94. And this paywall access, like, again, thinking about the user experience there, you're like, jumped through the hoops of like, getting through your university VPN or a paywall, and then you'd  download it, you add it to your Reference Manager, you then like, open it up, scroll down to page 56, you'd  like, look, and then you're  it, yeah. And you and you have totally forgotten why you were there. And like, you've lost your train of thought. And this is, like, a battle of researchers time and attention. We have such urgent problems in front of humanity that science needs to solve. And that that is immoral, or like, it's like, we need access to that information in a way that is  it's urgent. And we need like, this is, again, beyond open access. This is  the science comments that we're talking about. And that open access knowledge that we can stitch together and pull in, and  there's licensing and attribution. And this it's this like, it's this next step. Yep.


  

