+++
title = "Intro to the ROR API"
draft = false
date = "2022-01-25"
banner = "/img/banners/ROR_Banner-grey.jpg"
aliases = [ 
"/intro-ror-api",
"/tutorials/intro-ror-api",
"/tutorials"]
+++

## What this lesson covers

* Basic features of the ROR API
* Elements of a ROR record
* Constructing queries with the `?query` parameter

{{< callout color="mustard" icon="no-icon" >}}

### Heads up! Changes are coming in late 2023. 
Please note that this tutorial applies only to the current version of the ROR API and data structure. In late 2023, we are [planning to release version 2 of both the ROR API and the ROR JSON metadata schema](https://ror.org/blog/2022-12-14-schema-scheming/). Comments are open through **February 5, 2023** on our [proposed changes to the ROR schema](https://docs.google.com/document/d/18nl6pq0kdCU5ApcdbNjKnV7xHIw9eEY7DJG1WHjaLSs/edit?usp=sharing) -- we'd be grateful for your feedback! 

{{< /callout >}}

## Preparation
This lesson assumes you have a basic familiarity with APIs (Application Programming Interfaces) and with JSON. 

Open the following links in your browser. We will be using them during this tutorial. 

- The ROR search interface - https://ror.org/search 
- The ROR API on the web - https://api.ror.org/organizations 
- ROR API Documentation - https://ror.readme.io/docs/rest-api
- The ROR API on GitHub - https://github.com/ror-community/ror-api 
- ROR typeahead demos - https://ror-community.github.io/ror-typeahead-demos/ 
- URL Encoder: https://urlencoder.org

## Why use the ROR API? 

When users enter organization names as text, they do so in different ways, including with different spellings or in different languages. Organization names then become messy and inconsistent, which can lead to problems with searching, browsing, and exchanging organizational information. 

{{< centered >}}
{{< figure src="/img/tutorials/cracow-inconsistent-affiliations.gif" >}}
{{< /centered >}}

One of the most common uses of the ROR API is to use it to power a "typeahead" widget in a form, so that when a user (for instance, the author of a scholarly article) is asked to enter an organization name, they will be offered a list of standardized organization names to choose from rather than having to type the complete name out. The system can then store all the information in the ROR record associated with the ROR identifier, not just a single text string. 

Try our [demos of ROR-powered typeaheads](https://ror-community.github.io/ror-typeahead-demos/), see the [code for our typeahead demos](https://github.com/ror-community/ror-typeahead-demos), and read our [documentation on how to build your own typeaheads](https://ror.readme.io/docs/forms).

{{< centered >}}
{{< figure src="/img/tutorials/cracow-ror-typeahead.gif" >}}
{{< /centered >}}

When organization data is consistent, organizations such as the Cracow (or Kraków!) University of Economics can be confident of finding the research output produced by their researchers. 

{{< centered >}}
<a href="https://en.wikipedia.org/wiki/Krak%C3%B3w_University_of_Economics">{{< figure src="/img/tutorials/Krakow_University_of_Economics.jpg" >}}</a>

[https://en.wikipedia.org/wiki/Krak%C3%B3w_University_of_Economics](https://en.wikipedia.org/wiki/Krak%C3%B3w_University_of_Economics)
{{< /centered >}}

## About the ROR API

See https://ror.readme.io/docs/rest-api for full documentation of the ROR API. 

- The ROR API is a **REST API** that returns JSON data. 
- The ROR API is **entirely free** to use. There are no tiered plans.
- There are **no authentication tokens** or credentials needed to use the ROR API. 
- The rate limit on the ROR API is a **maximum of 2000 requests in a 5-minute period**.
- The ROR API is powered by [Django](https://www.djangoproject.com/) and [Elasticsearch](https://www.elastic.co/elasticsearch/).
- Check to see if the ROR API is up by sending a request to https://api.ror.org/heartbeat.
- The ROR API is best for use cases that involve querying or retrieving individual records. **If you need to retrieve a large number of records, use the ROR data dump** instead. Data dumps can be retrieved from the [ROR Data collection in Zenodo](https://zenodo.org/communities/ror-data) or the [ror-data Github repository](https://github.com/ror-community/ror-data).
- You can **install and run the ROR API locally** in Docker. See the README at https://github.com/ror-community/ror-api for instructions. 
- We strongly encourage ROR API users to sign up for the **[ROR Technical Forum](https://groups.google.com/a/ror.org/g/ror-tech)** in order to receive infrequent (two or three times a month) updates by email about changes to the ROR registry and API. 

{{< callout color="orange" icon="no-icon" >}}
### Consider whether you need to use the live ROR API
The ROR API received about 14 million requests per month in 2022, up from about 6 million per month in 2021 and 3 million per month in 2020. While ROR has maintained 100% uptime throughout this period of growth, please be mindful that many others use this service and there is no service-level agreement (SLA). If your use case requires a large number of daily queries, guaranteed uptime, or a very fast response rate, we recommend that you run the ROR API locally or use the ROR data dump.
{{< /callout  >}}



## ROR IDs and the ROR data structure

### The ROR ID
The basic unit of the ROR registry is the ROR ID, which is in the form `https://ror.org/0262te083`. The ROR ID is the unique identifier for a ROR record containing basic information about a research organization. See https://ror.readme.io/docs/identifier for more information about how ROR IDs are constructed. 

{{< centered >}}
{{< figure src="/img/tutorials/cracow-cue-ror-ui.png" width="70%" >}}

[https://ror.org/0262te083](https://ror.org/0262te083)
{{< /centered >}}

The ROR API can be used to [retrieve a single ROR ID](https://ror.readme.io/docs/api-single) by entering a URL in the form `https://api.ror.org/organizations/https://ror.org/0262te083` in your browser. (You can use cURL in a command-line interface if you prefer.) 

{{< centered >}}
{{< figure src="/img/tutorials/cracow-cue-ror-json.png"  width="70%" >}}

[https://api.ror.org/organizations/0262te083](https://api.ror.org/organizations/0262te083)

{{< /centered >}}

{{< callout color="green" icon="no-icon" >}}

### Exercises: Explore the ROR registry using the ROR search interface and the ROR API in a web browser. 

- Go to the ROR registry search interface at https://ror.org/search and look up a few organizations using the ROR search interface. 
- Then look up the ROR IDs of a few organizations using the ROR API in your browser by entering `https://api.ror.org/organizations/[some ROR ID]` in the URL bar, e.g., https://api.ror.org/organizations/https://ror.org/0262te083

{{< /callout >}}

### ROR data structure

There are currently **[16 top-level elements](https://ror.readme.io/docs/data-structure)** in a ROR record. The 15 metadata elements apart from the `id` element, which contains the ROR ID itself, fall into a few basic categories: 

- Name fields
	- `name`, `aliases`, `acronyms`, `labels`
- Location fields
	- `addresses`, `country`
- Information about the organization 
	 - `established`, `types`, `status`, `links`, `wikipedia_url`
- Related organizations 
	- `relationships` 
- Corresponding organizational identifiers
	- `external_ids`
- Deprecated fields
	- `email_address`, `ip_addresses`
{{< centered >}}
{{< figure src="/img/tutorials/ror-metadata-elements.png" width="85%" >}}

{{< /centered >}}


## Using the ROR API

There are three options for searching the ROR API, which are accessed using three different parameters: `?query`, `?query.advanced`, and `?affiliation`. 

- `?query` - Designed for **quick searches of an organization's name** ("World Wildlife Fund") or a commonly used external identifier for that organization (GRID, ISNI, Wikidata, or Funder ID). 
- `?query.advanced` - Designed for **complex or highly precise searches** for secondary organizational information such as the organization's location or website.
- `?affiliation` - Designed to **suggest and rank possible matches** in the ROR registry for long, messy text strings ("Anesthesiologie, Albert Schweitzer Ziekenhus, Postbus 444 3300 AK Dordrecht") using several different matching algorithms and to return results that generally need human review. 

**This tutorial covers only the `?query` parameter**, since it is the primary recommended method of searching the ROR registry for an organization by name when input data is fairly clean. See the [ROR REST API documentation](https://ror.readme.io/docs/rest-api) for more information on all three parameters. 

The code for the ROR REST API is also openly available at https://github.com/ror-community/ror-api.  

### General API usage tips
- All search strings, especially those that contain Latin extended or non-Latin characters, must be **[URL-encoded](https://www.w3schools.com/tags/ref_urlencode.asp)**. One useful tool to do this is https://urlencoder.org. 
- **Special characters** that are [reserved in Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html#_reserved_characters) must be escaped with a URL-encoded backslash character (`%5C`). Note that some reserved characters, like ( ), must occur in pairs, otherwise an error will be returned. 
- Search strings with **spaces** and/or multi-word search strings may need to be surrounded by URL-encoded quotation marks (`%22`), since Elasticsearch treats strings separated by a space as separate parts of a query instead of a single query. 
- ROR API queries are **paginated**, and searches return only the first 20 results by default. Additional results can be retrieved by paging through them with `page=[page number]`.
- ROR API queries can be **filtered** by country, by organization type, and by status. 
- ROR API queries use [Elasticsearch query syntax](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html#query-string-syntax) and therefore support wildcards, Boolean operators, and fuzzy matches. However, you may wish to use the `?query.advanced` parameter for this kind of searching instead. 
- By default, ROR API searches return only records where `status` has a value of `active`, but records whose `status` is `inactive` or `withdrawn` can also be retrieved with filters or by adding the parameter `?all_status` to any query. 

## Using the ?query parameter

The `?query` parameter of the ROR API is the recommended parameter for building basic searches as well as typeaheads in forms. The `?query` parameter is **optimized for searching for organization names and organization identifiers**, and therefore `?query` searches only a limited number of fields in a ROR record: 

- `name` 
- `aliases` 
- `labels` 
- `acronyms`
- `external_ids` 

Note that the ROR [search interface](https://ror.org/search) uses the `?query` parameter of the ROR API, as does the [organization search at DataCite Commons](https://commons.datacite.org/ror.org?query=*). These search tools, therefore, will return zero results for searches on values that are not stored in these fields, such as an organization's website: https://api.ror.org/organizations?query=www.oberlin.edu 

{{< callout color="grey" icon="no-icon" >}}
### Demonstrations: Simple queries for organization names and identifiers

- A single term in an organization's name: ```https://api.ror.org/organizations?query=Mickiewicz```
- An organization name with escaped special characters (M&I/Partners): ```https://api.ror.org/organizations?query=M%5C%26I%5C%2FPartners```
- The same organization name with unescaped special characters: ```https://api.ror.org/organizations?query=M%26I%2FPartners``` 
- An organization name with spaces and no quotation marks: ```https://api.ror.org/organizations?query=Harvard+University+Press```
- The same organization name with spaces surrounded by URL-encoded quotation marks: ```https://api.ror.org/organizations?query=%22Harvard+University+Press%22```
- An organization acronym: ```https://api.ror.org/organizations?query=cue```
- An organization name in a language with non-Latin characters (杭州市妇科医院 - Hangzhou Women's Hospital): ```https://api.ror.org/organizations?query=%E6%9D%AD%E5%B7%9E%E5%B8%82%E5%A6%87%E7%A7%91%E5%8C%BB%E9%99%A2``` 
- Retrieving the third page of results: ```https://api.ror.org/organizations?query=smith&page=3```
- Searching by organizational identifier: ```https://api.ror.org/organizations?query=%22grid.508697.5%22```  

Note that it is advisable to surround query searches for GRID IDs with quotation marks because the string "grid", which is a necessary part of the GRID ID, will match acronyms and name terms in other organizational records.  
  
{{< /callout >}}

{{< callout color="green" icon="no-icon" >}}
### Exercises: Searching for organization names and identifiers

- Use the ROR API to search for a single term in an organization's name. 
- Use the ROR API to search for an organization name that contains spaces. Try it both with and without enclosing URL-encoded quotation marks. 
- Use the ROR API to search for an organization name that includes one or more reserved characters such as a slash, ampersand, parenth, or hyphen. 
- Use the ROR API to search for an organization name in a non-English language. 
- Use the ROR API to search for an organization by its GRID ID, ISNI ID, Wikidata ID, or Funder Registry ID. 

{{< /callout >}}

## Filtering results

Results of a `?query` search can be filtered by `status`, `types`, and `country`. 

- `status` - The status of the organization in ROR: `Active`, `Inactive`, or `Withdrawn`. 
- `types` - The type of organization: `Education`, `Healthcare`, `Company`, `Archive`, `Nonprofit`, `Government`, `Facility`, or `Other`.
- `country` - The `country_name` ("Finland") or [ISO 3166 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) `country_code` ("fi") where the organization is located.

The syntax of a filter is `filter=[filter]:[value]`, and filters can be combined by separating them with commas. 
- `filter=status:Withdrawn`
- `filter=types:Nonprofit`
- `filter=country.country_name:Finland`
- `filter=country.country_code:fi`
- `filter=types:Nonprofit,country.country_code:fi`

Remember too that **searches by default show only records whose status is active**. You can use individual filters to show inactive organizations or withdrawn records, but you can also add the parameter `?all_status` to any query to include records of any status. If a query includes both `filter=status:[value]` and `all_status parameters`, the `filter=status:[value]` will take precedent. 

{{< callout color="grey" icon="no-icon" >}}
### Demonstrations: Filtering results by status, type, and country

- Filter the whole ROR registry to show only records whose status is "withdrawn": ```https://api.ror.org/organizations?filter=status:Withdrawn```
- Filter the whole ROR registry to show only organizations in Qatar: ```https://api.ror.org/organizations?filter=country.country_name:Qatar```
- Filter the whole ROR registry to show only organizations in Qatar and include inactive and withdrawn records: ```https://api.ror.org/organizations?filter=country.country_name:Qatar&all_status```
- An unfiltered search for a single term: ```https://api.ror.org/organizations?query=Wiley```
- The same search filtered by organization type: ```https://api.ror.org/organizations?query=Wiley&filter=types:Company```
- The original search filtered by country name: ```https://api.ror.org/organizations?query=Wiley&filter=country.country_name:Germany```
- The original search filtered by country code: ```https://api.ror.org/organizations?query=Wiley&filter=country.country_code:de```
- Another unfiltered search for a single term: ```https://api.ror.org/organizations?query=Astrophysics```
- The same search filtered by country name: ```https://api.ror.org/organizations?query=Astrophysics&filter=country.country_code:pt```
- The same search filtered by both country name and organization type: ```https://api.ror.org/organizations?query=Astrophysics&filter=country.country_code:pt,types:Facility```
  
{{< /callout >}}


{{< callout color="green" icon="no-icon" >}}
### Exercises: Filtering search results

- Filter a ROR API query by status. 
- Filter a ROR API query by organization type. 
- Filter a ROR API query by country code.
- Filter a ROR API query by country name. 
- Combine two or more filters together in a ROR API query. 

{{< /callout >}}

## Sample code  

- Look at and try out some Python scripts that search the ROR API available in the [ror-utilities GitHUb repository](https://github.com/ror-community/ror-utilities) -- or contribute your own!

{{< callout color="grey" icon="no-icon" >}}

### Demonstration: The ROR API query used in a Python script

The script at https://github.com/ror-community/ror-utilities/blob/main/general-scripts/match-other-ids-to-ror.py takes a CSV file of organizational identifiers, queries the ROR API, and returns a CSV file of matched ROR IDs. Note for instance line 25, which surrounds the input identifier with quotation marks: 

```search_term = '"' + input_id + '"'```

{{< /callout >}}

- You can also explore this [list of codebases on GitHub](https://github.com/stars/amandafrench/lists/github-list-of-ror-users) that use ROR.

## Get help 
- ROR API Documentation - https://ror.readme.io/docs/rest-api
- ROR Technical Forum - https://groups.google.com/a/ror.org/g/ror-tech 
- ROR Support - support@ror.org 

{{< callout color="dark-grey" icon="no-icon" >}}

Got a question or comment about this tutorial or the ROR API? Email support@ror.org. 

{{< /callout >}}
