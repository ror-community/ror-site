+++ 
title = "Using ROR IDs in Place of Funder IDs" 
date = "2025-03-05T13:46:09-05:00"
draft = false 
tags = ["Crossref", "Funders", "Cross-post", "Adoption"] 
categories = ["Adoption News"] 
archives = ["2025"]
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/crossref-social.png" 
images = ['/img/crossref-social.png']
authors = ["Patricia Feeney"] 
description = "Crossref members can now use ROR IDs to identify funders in any place where they currently use Funder IDs in their metadata."
doi = ""
+++ 


{{< figure src="/img/crossref-social.png" class="featured-figure" alt="Crossref logo." >}}

Crossref has announced today that its members can now use ROR IDs to identify funders in any place where they currently use Funder IDs in their metadata. To learn more about using ROR IDs to identify funders, read ROR's [guide to the Open Funder Registry to ROR transition](https://ror.readme.io/docs/funder-registry) and ROR's [blog post on systems that are already using ROR for funder identification](/blog/2024-08-06-using-ror-for-funder-identification/).

{{< callout color="green" icon="no-icon" >}} 

The below is cross-posted from the Crossref blog. [Read the original post.](https://www.crossref.org/blog/come-ror-with-us-using-ror-ids-in-place-of-funder-ids/) 

{{< /callout >}}

Today, we're delighted to let you know that **Crossref members can now use ROR IDs to identify funders in any place where you currently use Funder IDs in your metadata.** Funder IDs remain available, but this change allows publishers, service providers, and funders to streamline workflows and introduce efficiencies by using a single open identifier for both researcher affiliations and funding organizations. 

As you probably know, the [Research Organization Registry (ROR)](https://ror.org) is a global, community-led, carefully curated registry of open persistent identifiers for research organisations, including funding organisations. It’s a joint initiative led by the California Digital Library, Datacite and Crossref launched in 2019 that fulfills the long-standing need for an open organisation identifier. 

In 2023, we shared our plan to [transition the Open Funder Registry into ROR](https://www.crossref.org/blog/open-funder-registry-to-transition-into-research-organization-registry-ror). More recently, we announced that we were planning to [update our schema so that it is possible to collect ROR IDs where we currently collect Funder IDs](https://www.crossref.org/blog/roring-ahead-using-ror-in-place-of-the-open-funder-registry) such as in the funding metadata section for works and funder section for grants. Now that we have completed this work, Crossref members can start depositing ROR IDs where they would normally deposit Funder IDs. This update also means that the community, including funders, service providers, researchers, and data scientists can retrieve this metadata [via our API](https://api.crossref.org/works?filter=has-ror-id:true). 

So come and ROR with us and start depositing ROR IDs for both researcher affiliations and funding organisations.

## Open Funder Registry-ROR transition 

This is of course a significant first step in the Open Funder Registry to ROR transition.

We’ve [always said](https://ror.readme.io/docs/funder-registry) that we would continue supporting Funder IDs in our schema and in our tools and services until the community is ready to transition - and we will. In the last year, Crossref and ROR conducted a series of Open Funder Registry user interviews to help us understand how it was being used and identify practical challenges to this transition in our members’ workflow (thank you to those who took part, it was incredibly useful!).

One major takeaway from this consultation was around the pivotal role that peer review management systems played in the Open Funder Registry-ROR transition. We look forward to seeing more service providers integrating with ROR in the future. If you are a service provider and are ready to integrate with ROR, drop [support@ror.org](mailto:support@ror.org) an email.

## Including ROR IDs in Crossref metadata

If you are ready to begin including ROR IDs in your funding metadata, you only need to include the ROR itself to identify a funder. 

For example:

```
<fr:program name="fundref">
     <fr:assertion name="ror">https://ror.org/00fq5cm18</fr:assertion>
     <fr:assertion name="award_number">10.3030/725840</fr:assertion>
</fr:program>
```

Examples of more complex combinations of funding information are available in our [documentation](https://www.crossref.org/documentation/funder-registry/funding-data-overview/). This update has been made across all schema that support funding metadata.

Our grants schema has recently been updated to [version 0.2.0](https://www.crossref.org/documentation/schema-library/grants-schema/) to support ROR IDs in place of funder identifiers as well. As with funding metadata, only the ROR ID needs to be supplied within the record:

```
<funding amount="750" currency="USD" funding-percentage="75" funding-type="APC">
  <ROR>https://ror.org/02twcfp32https://ror.org/02twcfp32</ROR>
  <funding-scheme>Sofa Lending Programme</funding-scheme>
</funding>
```

Although previously a funder name was collected with the funder identifier, for both grants records and funding data in an attempt to avoid redundant, incorrect or conflicting metadata, now we’re accepting an identifier only as the ROR ID has an existing metadata record. The organisation name exists within the record in the [ROR registry](https://ror.org/search) and the ROR record is the authoritative source of the name.


## ROR IDs in JSON outputs

We have an existing legacy practice of representing Open Funder Registry IDs as just a DOI, but ROR IDs are represented in the JSON outputs as a full URL with id-type “ROR”, for example:

### Funding metadata

```

 "funder": [
      {
        "award": [
          "10.3030/725840"
        ],
        "id": [
          {
            "id": "https://ror.org/02twcfp32",
            "id-type": "ROR",
            "asserted-by": "publisher"
          }
        ]
      }
    ],
```

### Grant funder information

```

"funding": [
              {
                "type": "infrastructure",
        "award-amount": {
                "amount": 750.0,
                 "currency": "USD",
                 "percentage": 75
            },
                "funder": {
                  "id": [
                    {
                      "id": "https://ror.org/02twcfp32",
                      "id-type": "ROR",
                      "asserted-by": "publisher"
                    }
              ]
            }
          }
        ]
      }
    ],

```

If you have any questions or feedback, get in touch with us at [support@crossref.org](mailto:support@crossref.org)!

{{< callout color="grey" icon="fa-envelope" >}} 

Questions about integrating ROR IDs for funders into your system? Write support@ror.org. 

{{< /callout >}}
