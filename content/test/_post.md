+++ 
title = "ROR site post documentation" 
date = "2024-03-27" 
draft = true 
tags = ["", ""] 
categories = [""] 
style = "card-plain" 
banner = "/img/banners/ROR_Banner-green.png" 
thumb = "/img/blog/" 
images = ['/img/blog/']
videos = ['""]
author = "" 
description = ""
+++ 

## This is a test blog post
Hello, world. See the top of this file for default front matter metadata. 

## Image locations

Sitewide images should be stored in the directory /static/img and blog-specific images should be stored in the directory /static/img/blog/[blogpostname]. 

### Thumbnail images

The ROR blog is optimized for square thumbnails on the blog list page and the home page (called with "thumb" in blog post front matter), but rectangular images share best on social media (called with "images" in blog post front matter). You can choose to use a square image as the thumbnail and a different, rectangular image as the featured image for social cards, or you can use the same image file for both. 

The best size for square thumbnails is 300 x 300 and the best size for rectangular social sharing images is 1200 x 627. 

### Round avatar image for interviews 

Use the class "round-figure" in the figure shortcode to generate a small round avatar of a person's face from an image. The original image should be square and cropped as closely as possible. 

### {{< figure src="/img/amanda-sq-100.png" class="round-figure" alt="Amanda French" >}} Amanda French


### Centered and shrunken image

Use the class "blog-figure" in the figure shortcode to center an image in a blog post and shrink it to 70% of the page width. 

{{< figure src="/img/blog/caltech/caltech-data-item-affiliation.png" class="blog-figure" alt="Entering an affiliation into CaltechData" caption="Entering an affiliation into CaltechDATA with InvenioRDM.">}} 

### YouTube videos and playlists

YouTube videos can be embedded with the built-in Hugo shortcode. Use the class "blog-video" in the youtube shortcode to center an embedded YouTube video and shrink it to 70% of the page width. 

{{< youtube id="GIxqvBIx4r0" title="ROR Community Update | 2023 ROR Annual Community Meeting" class="blog-video" >}}

YouTube playlists can be embedded with the custom playlist shortcode.

{{< playlist id="PLagyLN5PZI3zVbJNYCNFmL1cJif_31ReV" title="Integrating ROR in ResearchEquals" class="blog-video" >}}


## Callout blocks

{{% callout %}} Use the <code>callout</code> shortcode for a callout box. You can make the box any one of the brand colours: beige, green, dark grey, mustard or black by appending this to the shortcode (or leave color out for the default grey).

You can also set any icon from the [Font Awesome v4 library](https://fontawesome.com/v4/icons/) by appending its name e.g. <code>fa-envelope</code> (or as with color, leave icon out for the default info icon). If you do want an icon, specify "no-icon" and your callout box will have full-width text. You can style text within a callout box using normal Markdown. View the markdown for this page to see the code in action.{{% /callout %}}

{{% callout color="green" icon="no-icon" %}} This is a green callout box with no icon. *Lorem Ipsum is the single greatest threat.* We are not - we are [not keeping up with other websites](#). {{% /callout %}}

{{% callout color="dark-grey" icon="fa-envelope" %}} This is a dark grey callout box, with an envelope icon. We are not - we are [not keeping up with other websites](#). {{% /callout %}}

{{% callout color="mustard" %}} ## This is an orange callout box with a heading and no icon.
Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does [everybody know](#) that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud. {{% /callout %}}

{{% callout color="black" icon="fa-question-circle" %}} This is a black callout box, with a question-circle icon. Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An [‘extremely credible source’](#) has called my office and told me that Barack Obama’s placeholder text is a fraud. {{% /callout %}}

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
