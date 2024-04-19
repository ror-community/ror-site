+++
title = "Announcing Version 2 of the ROR Schema and API!"
date = "2024-04-15"
draft = false
tags = ["Updates", "API", "Development", "Implementation"]
categories = ["Updates"]
style = "card-plain"
banner = "/img/banners/ROR_Banner-green.png"
thumb = "/img/ror-v2-launch-shadow-sparkles.gif"
images = ['img/ror-v2-launch-shadow-sparkles.gif']
author = "ROR Core Team"
description = "Today, we are delighted to announce the launch of version 2 of the ROR schema and API! This new version of our schema and API will serve as a rock-solid foundation for everything ROR users want to accomplish now and in the future."
+++

{{% callout color="green" icon="no-icon" %}}

**Today, we are delighted to announce the launch of version 2 of the ROR schema and API! This new version of our schema and API will serve as a rock-solid foundation for everything ROR users want to accomplish now and in the future.** 

{{% /callout %}}

Today marks a red-letter (teal-letter?) day for ROR: the official public launch of **version 2 of the ROR schema and API**! Version 2 of ROR, developed and beta-tested over many months with [the generous input and help of the ROR community](https://ror.readme.io/docs/feedback-docs), is more streamlined and more powerful than version 1, including some restructuring that will make ROR data easier to manage and use and some new fields that ROR users have been asking for. Read on to find out more. 


## What's new - summary

Here's a synopsis of what's new and improved.

* We've added a field for **administrative information** that includes the date a record was created and the date it was last modified. This crucial change enables users to retrieve only the most recently added and updated records from the ROR registry, which has been a much-requested feature. 

* We've simplified **name information** and have made changes to ensure that organization names in ROR work for a global, multilingual community of users. By adding a place to store language codes for all name variants and treating names in different languages as equivalent, we've made ROR metadata less Anglocentric and more useful for countries with multiple official languages. 

* We've removed redundant and overly granular **location information**, keeping only the most useful and globally relevant fields: country name, country code, latitude, longitude, specific location (city), and [GeoNames](https://geonames.org) ID. These changes make location information much easier to read, understand, and work with.

* We've made organization **website information** more useful by adding a field for an organization's web domains, creating a single container field for the organization's website and its Wikipedia page, and removing deprecated fields for IP address and email address that were inherited from GRID and never populated. Web-related metadata is now more compact and better organized, and users will now be able to disambiguate organizations by domain. 

* We've restructured **external identifier information** and made it more flexible in order to make it easier to manage current and potential future mappings to other organization identifiers.

* We're adding an additional **organization type**, "funder," which can be combined with existing organization types in ROR such as "nonprofit" and "government." With [ROR set to become the standard identifier for funders](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror/), this change will make it easier for ROR users to recognize and select funding organizations. 

* The **ROR API** now exists in two parallel versions, and we've made sure not to break any code that current ROR API users have written. Version 1 of the ROR API is now available at [https://api.ror.org/v1/organizations](https://api.ror.org/v1/organizations) and version 2 of the ROR API is now available at [https://api.ror.org/v2/organizations](https://api.ror.org/v2/organizations), but version 1 is still available at the original location without the version in the path: [https://api.ror.org/organizations](https://api.ror.org/organizations). Version 1 of the ROR API will remain the default for at least another year, through April 2025 and perhaps beyond.

* All the same records will always be available at the same time in both versions of the API, and all the same functionality of version 1 of the ROR API remains available in version 2. Users of version 2 of the ROR API, however, will be able to send **additional queries based on version 2 metadata**, such as queries based on created and last modified dates. 

* The **ROR data dump** now includes JSON and CSV files formatted according to both schema v1 and schema v2. This means that there will now be 4 files in each data release instead of 2, and users can choose to use the format and schema that best suits their needs. Take a look for yourself by downloading the most recent ROR data dump from Zenodo at [https://zenodo.org/doi/10.5281/zenodo.6347574](https://zenodo.org/doi/10.5281/zenodo.6347574). 

* The **ROR web search** at [https://ror.org/search](https://ror.org/search) now uses version 2 of the ROR API, and we've taken the opportunity to make a few improvements. Organization names are now identified by type and language so that it's more apparent what's an alias, what's an acronym, and what's in an alternate script. Additionally, each individual landing page for a ROR record now includes a link to the JSON view of the record, which enables users to see the underlying data behind the interface. 

{{% callout color="mustard" icon="no-icon" %}}

Not all new fields and subfields in version 2 of ROR have values yet, but we expect to add most or all of this information by the end of Q2 2024, proceeding carefully in order to ensure that added values are accurate.  

**Created/last modified dates** have been added to all records, using actual dates from GRID and ROR data releases.

**Language codes** for names are currently only included for names inherited from the "labels" field in the version 1 schema. Language codes have not yet been added for other names. 

**Domains** have not yet been added. 

The **funder** organization type has not yet been added to funder records. 

{{% /callout %}}


## Compare a v1 record with a v2 record

Compare the ROR record for Victoria University in ROR v1 with the ROR record for Victoria University in ROR v2 to see the improvements we've made in the metadata. 

{{% centered %}}

Victoria University, ROR v1

{{< figure src="/img/ror-v1-victoria-university.png" alt="The version 1 ROR record for Victoria University" caption="The version 1 ROR record for Victoria University" >}}

{{% /centered %}}

{{% centered %}}

Victoria University, ROR v2

{{< figure src="/img/ror-v2-victoria-university.png" alt="The version 2 ROR record for Victoria University" caption="The version 2 ROR record for Victoria University" >}}

{{% /centered %}}


## What's new - more details

If you'd like to see even more details about what's new in version 2 of the ROR API and schema, take a look at our [changelog](https://ror.readme.io/changelog/2024-04-11-schema-api-v2) and at our [v2 documentation](https://ror.readme.io/v2/docs/). In our documentation of version 2 of ROR you'll find all the new v2 fields and subfields listed by name, sample v2 API queries and results, and fully updated guides to implementing ROR using version 2. You can easily toggle between v1 and v2 documentation. 

{{< figure src="/img/ror-v2-docs-toggle.gif" alt="How to switch between version 1 and version 2 of ROR documentation" caption="How to switch between version 1 and version 2 of ROR documentation" >}}


## Thanks to all who made this possible!

The launch of version 2 of ROR ranks right up there with other [major milestones for ROR](/about#history), including the stakeholder meeting in Girona, Spain in January 2018; the "Minimum Viable registry" launch in January 2019; and the first independently-curated release in March 2022. We're very grateful to all those who made this watershed moment possible, including all the members of the ROR community who gave us [feedback on our proposals](https://ror.readme.io/v2/docs/feedback-docs) and participated in our [beta test](https://ror.org/blog/2023-09-14-beta-test/). 

If you'd like to participate in future ROR developments, please get involved with the ROR [community](/community)! 

* [Subscribe to the quarterly ROR newsletter](http://eepurl.com/gjkT9H) 
* [Sign up for the ROR Technical Forum](https://groups.google.com/a/ror.org/g/ror-tech)
* [Join the ROR Slack](https://tinyurl.com/ror-slack) 
* Attend a [ROR community call or other event](/events)

{{% callout color="light-grey" icon="fa-envelope" %}}

Want help switching to ROR version 2 or integrating it into your system for the first time? Email [support@ror.org](mailto:support@ror.org) with any questions or book a meeting with ROR Technical Community Manager Amanda French at [https://calendly.com/ror-chat](https://calendly.com/ror-chat).  

{{% /callout %}}