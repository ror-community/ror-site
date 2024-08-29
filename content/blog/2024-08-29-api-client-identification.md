+++ 
title = "How Should ROR Handle API Client Identification?" 
date = "2024-08-29T09:19:41-04:00"
draft = false 
tags = ["API", "Feedback", "Development" ] 
categories = ["Requests"] 
archives = ["2024"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/clientid/sven-finger-XaBE3eokg88-unsplash.jpg" 
images = ['/img/blog/clientid/sven-finger-XaBE3eokg88-unsplash.jpg']
author = "Liz Krznarich" 
description = "We're looking for your feedback on a draft proposal for managing ROR API client identification with 'mailto' parameters or API keys, and comments are open through October 4th, 2024."
+++ 

{{% callout color="green" icon="no-icon"%}}

We're looking for your feedback on a [draft proposal for managing ROR API client identification](https://bit.ly/ror-client-id-proposal) with 'mailto' parameters or API keys, and comments are open **through October 4th, 2024**. Which option would you prefer? Does either option present a significant barrier for your use of the ROR API? Let us know! 

{{% /callout %}}

{{< figure src="/img/blog/clientid/sven-finger-XaBE3eokg88-unsplash.jpg" class="featured-figure" alt="Door knocker of house in Portugal. Photo by Sven Finger on Unsplash." >}}

Since ROR’s launch in 2019, the ROR API has been provided at no cost and with no registration or credentials required. While requiring no registration or identification reduces barriers to entry, it makes managing the health and stability of the API challenging amid constant and growing use.

In recent months, “impolite” use of the ROR API has presented a particular challenge, which causes degraded performance for all API users. Examples of “impolite” use include:

* Sustained high levels of requests just below the rate limit from multiple coordinated IP addresses
* Use of proxies and frequent IP changing to evade rate-limiting

IP-based rate limiting, which ROR [already has in place at a limit of 2,000 requests in every 5 minutes](https://ror.readme.io/v2/docs/rest-api#registration-and-rate-limits), is not an effective solution to the behaviors listed above. Additionally, monitoring and blocking impolite behavior based on IP address is not a scalable solution as ROR API use continues to grow. **ROR is therefore seeking to implement a lightweight solution to allow monitoring and managing API traffic based on criteria other than IP address.**

## Goals

* Maintain stability and usability of ROR API by enabling throttling/blocking based on some sort of client identification rather than IP address

* Allow ROR team to better support users by enabling ROR team to contact users whose requests generate lots of errors, are incorrectly formatted, etc and provide them with assistance fixing their requests

* Allow ROR team more insight into API usage patterns than can be gathered from IP addresses alone, which help to guide technical decisions and architecture approaches

{{% callout color="orange" icon="no-icon" %}}

ROR is **not** considering removing access to any API services/resources for anonymous requests. Anonymous requests will be allowed, but they will receive a lower rate limit.

{{% /callout %}}

## Scope 

ROR is seeking feedback on the the following proposed change:

**The potential addition of API client identification in order to receive a rate limit of 2000 requests per 5 minute period. Requests without identification will receive a lower rate limit of 50 requests per 5 minute period.**

Any additional revisions to ROR’s API are out of scope for this proposal, but can be submitted for consideration to [ROR’s roadmap](https://github.com/ror-community/ror-roadmap).

## Proposed changes

In keeping with ROR’s objective of maintaining low barriers to entry, two options for identifying API clients have been developed. Both approaches involve providing an additional URL parameter or request header with each API request. Neither of these approaches are intended to provide authentication or authorization, therefore values provided are not secret and can be passed and stored as plain text. **Full details of the proposed changes, pros and cons, privacy considerations, examples, and implementation timing are available [in the proposal draft](https://bit.ly/ror-client-id-proposal).** 

## Questions to consider

* Does either proposed approach above present a significant barrier to your use (or your customers’ use) of the ROR API?

* Which approach do you prefer?

* How much lead time would be needed for you/your organization to implement changes needed to support including an additional parameter with either an email address or API key in your ROR API requests?

* Are there other approaches you would suggest?

## Giving feedback 

To give feedback, please visit the [proposal document](https://bit.ly/ror-client-id-proposal) and suggest changes to the text or add comments in the margin by **October 4th, 2024**. We'll give a summary of the responses and discuss implementation at the [ROR Community Call in November](https://ror.org/events/#ror-community-call-november-2024). 

Let us know what you think! We appreciate your time and all that you do to help us make ROR the best service it can be. 

{{% callout icon="fa-envelope" %}}

Questions? Write [support@ror.org](mailto:support@ror.org). 

{{% /callout %}}
