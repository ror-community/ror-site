+++
title = "ROR Display Guidelines"
draft = false
date = "2021-04-15"
banner = "/img/banners/ROR_Banner-pink.jpg"
style = "card-plain"
+++

ROR IDs are primarily intended for use internally by web applications and services. Displaying ROR IDs in your application user interfaces or digital documents may have limited benefit to the general public. Displaying or linking to ROR IDs is entirely optional, and we recommend that you consider their relevance for your audience carefully.

If you choose to display ROR IDs, please follow these guidelines:

## General guidelines

- Consider carefully whether your community needs to see ROR IDs publicly displayed.  Displaying ROR IDs  may have limited benefit to the general public.
- If you choose to display ROR IDs, include a link to the organization’s ROR record
- If you choose to display an icon, use the ROR  icon (see below for icon files)
- For accessibility and usability, link the identifier text (and icon, if using) rather than just the icon

## Recommended display formats

### Full ROR ID

- Full ROR ID URL (including scheme, host and path) linked to the corresponding ROR record

    [https://ror.org/03yrm5c26](https://ror.org/03yrm5c26)
- Optionally, include the ROR icon before the ID URL

    <p>
        <a href="https://ror.org/03yrm5c26">
            <img alt="ROR logo" src="https://raw.githubusercontent.com/ror-community/ror-logos/main/ror-icon-rgb.svg" height="24">
            https://ror.org/03yrm5c26
        </a>
    </p>

#### When to use the Full ROR ID format

- When a ROR ID is shown on its own, where the organization name may or may not be displayed, for example within a profile or account page for a single institution:
    ![ROR ID example from DataCite Commons](/img/ror-cdl-commons-ex.png)
- When ROR IDs are shown within a list of organizations, and there is sufficient space to show the full ROR ID for each organization

#### Code sample

    <a href="https://ror.org/03yrm5c26">
        <img alt="ROR logo" src="https://raw.githubusercontent.com/ror-community/ror-logos/main/ror-icon-rgb.svg" height="24" />
        https://ror.org/03yrm5c26
    </a>

### Inline ROR ID

- Organization name, linked to the corresponding ROR record

    [California Digital Library](https://ror.org/03yrm5c26)
- Optionally, include the ROR icon after the organization name

    <p>
        <a href="https://ror.org/03yrm5c26">
            California Digital Library
            <img alt="ROR logo" src="https://raw.githubusercontent.com/ror-community/ror-logos/main/ror-icon-rgb.svg" height="24">
        </a>
    </p>

#### When to use the Inline ROR ID format

- When referring to a ROR ID within a sentence, ex “...the team at <a href="https://ror.org/03yrm5c26">California Digital Library <img alt="ROR logo" src="https://raw.githubusercontent.com/ror-community/ror-logos/main/ror-icon-rgb.svg" height="20"></a> recently launched…”
- When there is not sufficient space to include the full ROR ID URL

#### Code sample

    <a href="https://ror.org/03yrm5c26">
        California Digital Library
        <img alt="https://raw.githubusercontent.com/ror-community/ror-logos/main/ror-icon-rgb.svg" height="24" />
    </a>

## Using the ROR icon

### Do

- Consider whether displaying the ROR icon in your application adds value for your audience
- Use the [scalable SVG icon version](https://raw.githubusercontent.com/ror-community/ror-logos/main/ror-icon-rgb.svg) wherever possible for best image quality
- When using the SVG icon, use ROR brand colors <span style="color:#53baa1;font-weight:bold">#53baa1</span> or <span style="color:#2c2c2c;font-weight:bold">#2c2c2c</span> whenever possible. In cases where use of ROR brand colors is not possible, use black or white
- Scale the ROR icon to match the line height of the surrounding text, but no smaller than a height of 16px
- Make sure that the target size for links to ROR records is at least 44x44px, in order to comply with [WCAG accessibility guidelines](https://www.w3.org/WAI/WCAG21/quickref/?showtechniques=255#target-size)
- Link to [https://ror.org](https://ror.org) when using the ROR icon on its own (ex, when you are referring to the ROR initiative, rather than a specific ROR record)

### Don’t
- Display the ROR icon any smaller than 16px in height
- Link just the ROR icon to its corresponding ROR record, unless the icon is large enough to meet [WCAG target size requirements](https://www.w3.org/WAI/WCAG21/quickref/?showtechniques=255#target-size) (44x44px)
- Manipulate the icon (including rotating, changing colors, and adding drop shadows or animations)

## Icon files
Image files (png, svg) are available from:
- **Github:** https://github.com/ror-community/ror-logos
- **Wikimedia commons:**  https://commons.wikimedia.org/wiki/File:ROR_logo.svg
- **Zenodo:** https://doi.org/10.5281/zenodo.4701802

These files are available under a [CC BY-ND 4.0 license](https://creativecommons.org/licenses/by-nd/4.0/)

## ROR glossary

- **ROR:** The Research Organization Registry, available in the UI at [https://ror.org/search](https://ror.org/search) or the API at [https://api.ror.org/organizations](https://api.ror.org/organizations)
- **ROR identifier/ROR ID:** The identifier for a particular organization, ex: [https://ror.org/03yrm5c26](https://ror.org/03yrm5c26)
- **ROR record:** The metadata associated with a ROR identifier, ex:  [https://ror.org/03yrm5c26](https://ror.org/03yrm5c26) or [https://api.ror.org/organizations/https://ror.org/03yrm5c26](https://api.ror.org/organizations/https://ror.org/03yrm5c26)