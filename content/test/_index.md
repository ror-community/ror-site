+++
title = "Test page"
draft = true
date = "2023-01-20"
banner = "/img/banners/ROR_Banner-grey.jpg"
+++

## This is a test page
Hello, world

## Multi column layouts
Refer to [the Crossref site's _editors info](https://testweb.crossref.org/_editors/shortcodes-reference/#custom-shortcodes) for instructions on how to implement.

## 2 column 60%/40% layout
{{% row %}}
{{% column-60 %}}
**This is a 2 column layout with 2 unequal width columns of approximately 60% / 40%.** Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.
{{% /column-60 %}}

{{% column-40 %}}
**Insert an image into the second column using Hugo's built-in [figure shortcode](https://gohugo.io/content-management/shortcodes/#figure).** Lorem Ipsum is the single greatest threat.

{{< figure src="/img/jeremy-pagden-g1zVGpS2j20-unsplash.jpg" alt="Image &copy; by Jeremy Pagden" caption="Image &copy; by Jeremy Pagden">}}

{{% /column-40 %}}
{{% /row %}}

## Callout blocks

{{% callout %}} Use the <code>callout</code> shortcode for a callout box. You can make the box any one of the brand colours: beige, green, dark grey, mustard or black by appending this to the shortcode (or leave color out for the default grey).

You can also set any icon from the [Font Awesome v4 library](https://fontawesome.com/v4/icons/) by appending its name e.g. <code>fa-envelope</code> (or as with color, leave icon out for the default info icon). If you do want an icon, specify "no-icon" and your callout box will have full-width text. You can style text within a callout box using normal Markdown. View the markdown for this page to see the code in action.{{% /callout %}}

{{% callout color="green" icon="no-icon" %}} This is a green callout box with no icon. *Lorem Ipsum is the single greatest threat.* We are not - we are [not keeping up with other websites](#). {{% /callout %}}

{{% callout color="dark-grey" icon="fa-envelope" %}} This is a dark grey callout box, with an envelope icon. We are not - we are [not keeping up with other websites](#). {{% /callout %}}

{{% callout color="mustard" %}} ## This is an orange callout box with a heading and no icon.
Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does [everybody know](#) that dork named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that your placeholder text is a fraud. {{% /callout %}}

{{% callout color="black" icon="fa-question-circle" %}} This is a black callout box, with a question-circle icon. Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that dork named Lorem Ipsum? An [‘extremely credible source’](#) has called my office and told me that your placeholder text is a fraud. {{% /callout %}}

## Buttons

Buttons work similarly to the new callout boxes above. Just wrap the _text_ of your button in the new <code>button</code> shortcode, and specify the link in the shortcode itself. You can specify a colour of green or red (only, for now), or leave out the color for the default grey button (no other colors are currently supported).

{{% button color="green" link="/blog" %}} this is a button {{% /button %}}
{{% button color="red" link="/blog" %}} this is a button {{% /button %}}
{{% button link="/blog" %}} this is a button {{% /button %}}


## Centered content

You can center any block of content, including just a single button, using the `centered` shortcode. View the .md file for this page to see how it works. You can see an example of it below.

{{% centered %}}

{{% button link="/blog" %}} this is a button {{% /button %}}

### Here is a title

And some text beneath it.

{{% /centered %}}

## Home page announcements

To add an announcement banner to the home page, edit the announcement_text and announcement_link in /data/announcement/announcement.yaml and make sure the announcement parameter in the site's config file is enabled. The live site's config file is live.toml: set params.announcement to enable=true to make the purple announcement banner appear with the text and link from announcement.yaml. 

## Tables 

| C1 | C2  | C3  | C4  | C5  | C6  |
|---|---|---|---|---|---|
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |
| ROW  | ROW  | ROW  | ROW  | ROW  | ROW  |