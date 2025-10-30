+++
title = "ROR test page with examples"
draft = false
date = "2023-01-20"
banner = "/img/banners/ROR_Banner-grey.jpg"
+++

## This is a test page
Hello, world! View the Markdown file for this page to see how this all works. 

## 2 column layout
{{< row >}}
{{< column-60 >}}
**This is a 2 column layout with 2 unequal width columns of approximately 60% / 40%.** 

Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups. 

Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. In seeing a sample of lorem ipsum, his interest was piqued by consectetur—a genuine, albeit rare, Latin word. Consulting a Latin dictionary led McClintock to a passage from De Finibus Bonorum et Malorum (“On the Extremes of Good and Evil”), a first-century B.C. text from the Roman philosopher Cicero.{{< /column-60 >}}

{{< column-40 >}}
**Insert an image into the second column using Hugo's built-in [figure shortcode](https://gohugo.io/content-management/shortcodes/#figure).** {{< figure src="/img/jeremy-pagden-g1zVGpS2j20-unsplash.jpg" alt="Image &copy; by Jeremy Pagden" caption="Image &copy; by Jeremy Pagden">}}

{{< /column-40 >}}
{{< /row >}}

## Callout boxes

{{< callout icon="fa-info">}} Use the `callout` shortcode for a callout box. You can make the box any one of the brand colors except raspbaerry by specifying the color in the shortcode: green, dark grey, orange, light grey, purple, or black. If you do not specify a color, the callout will be the default light grey.

By default, callout boxes have the info icon shown here. You can also set any icon from the [Font Awesome library](https://fontawesome.com) by specifying its name. If you do not want an icon, specify "no-icon" and your callout box will have full-width text. You can style text within a callout box using normal Markdown.{{< /callout >}}

{{< callout color="green" icon="no-icon" >}} This is a green callout box with no icon. `Lorem Ipsum is placeholder text.` Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. 
{{< /callout >}}

{{< callout color="dark-grey" icon="no-icon" >}} This is a dark grey callout box with no icon. `Lorem Ipsum is placeholder text.` Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. 
{{< /callout >}}

{{< callout color="orange" icon="no-icon" >}} This is an orange callout box with no icon. `Lorem Ipsum is placeholder text.` Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. 
{{< /callout >}}

{{< callout color="light-grey" icon="no-icon" >}} This is a light grey callout box with no icon. `Lorem Ipsum is placeholder text.` Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. 
{{< /callout >}}

{{< callout color="purple" icon="no-icon" >}} This is a purple callout box with no icon. `Lorem Ipsum is placeholder text.` Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. 
{{< /callout >}}

{{< callout color="black" icon="no-icon" >}} This is a black callout box with no icon. `Lorem Ipsum is placeholder text.` Richard McClintock, a Latin scholar from Hampden-Sydney College, is [credited](#) with discovering the source behind the ubiquitous filler text. 
{{< /callout >}}

## Buttons

Buttons work similarly to the callout boxes above. Wrap the text of your button in the <code>button</code> shortcode and specify the link in the shortcode itself. If no color is specified, the color will be green. 

{{< button link="#" >}} This is a green button {{< /button >}}<br />

{{< button color="green" link="#" >}} This is also a green button {{< /button >}}<br />

{{< button color="dark-grey" link="#" >}} This is a dark grey button {{< /button >}}<br />

{{< button color="orange" link="#" >}} This is an orange button {{< /button >}}<br />

{{< button color="light-grey" link="#" >}} This is a light grey button {{< /button >}}<br />

{{< button color="raspberry" link="#" >}} This is a raspberry button {{< /button >}}<br />

{{< button color="purple" link="#" >}} This is a purple button {{< /button >}}<br />

{{< button color="black" link="#" >}} This is a black button {{< /button >}}<br />


## Centered content

You can center any block of content, including just a single button, using the `centered` shortcode. 

{{< centered >}}

{{< button link="/blog" >}} This button is centered {{< /button >}}

### Here is a title

And some text beneath it.

{{< /centered >}}

## Home page announcements

To add an announcement banner to the home page, edit the `announcement_text` and `announcement_link` values in `/data/announcement/announcement.yaml` and then make sure the announcement parameter is enabled in all of the site's config files: localhost.toml, dev.toml, staging.toml, and live.toml. In the config files, set `params.announcement` to `enable=true` to make the purple announcement banner appear with the text and link from the `announcement.yaml` file. 

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

## Headers 

Level 1 headers are reserved for page titles. 

Tables of contents are generated automatically from level 2 headers on a page by the toc.html partial layout. The table of contents appears at the top of all regular site pages excluding the blog and taxonomy pages such as blog categories and archives. Level 3 headers and below will not appear in tables of contents.

Anchor links next to all headers are generated automatically by a render hook on all regular pages excluding the blog and the taxonomy pages. The anchor link will not display for headers of level 4 or below, but it will still be present and will cause an "empty link" accessibility error if used. Therefore, it is best to use bold or strong text instead of level 4 headers. 

### Header 3

#### Header 4 

**Bold text**

## Images

### Image locations

Sitewide images should be stored in the directory `/static/img` and blog-specific images should be stored in the directory `/static/img/blog/[blogpostname]`. 

### Thumbnail images

The ROR blog is optimized for square thumbnails on the blog list page and the home page (called with "thumb" in blog post front matter), but rectangular images share best on social media (called with "images" in blog post front matter). You can choose to use a square image as the thumbnail and a different, rectangular image as the featured image for social cards, or you can use the same recangular image file for both the thumbnail and the social sharing image. 

The best size for square thumbnails is 300 x 300 and the best size for rectangular social sharing images is 1200 x 627. 

### Round avatar image for interviews 

Use the class "round-figure" in the figure shortcode to generate a small round avatar of a person's face from an image. The original image should be square and cropped as closely as possible. 

{{< figure src="/img/amanda-sq-200.png" class="round-figure" alt="Round avatar of Amanda French" >}} **Amanda French**


### Centered and shrunken image

Use the class "blog-figure" in the figure shortcode to center an image in a blog post and shrink it to 70% of the page width. Leave the class off if you want the image to be 100% width.

{{< figure src="/img/blog/caltech/caltech-data-item-affiliation.png" class="blog-figure" alt="Add Creator screen in CaltechDATA showing organization dropdown." caption="Entering an affiliation into CaltechDATA with InvenioRDM.">}} 

## YouTube videos

YouTube videos can be embedded with the built-in Hugo `youtube` shortcode. Use the class "blog-video" in the `youtube` shortcode to center an embedded YouTube video and shrink it to 70% of the page width in a responsive container.

{{< youtube id="GIxqvBIx4r0" title="ROR Community Update | 2023 ROR Annual Community Meeting" class="blog-video" >}}

YouTube playlists can be embedded with the custom `playlist` shortcode.

{{< playlist id="PL4n_Cvd0PpoHfsM3_6VfhAovGIfL3Z79x" title="ROR Demos by Adopters" class="blog-video" >}}

Non-YouTube video content cannot be embedded.

## iframes

Use the `iframe` shortcode to embed an iframe in a content page in a responsive container.

{{< iframe "https://docs.google.com/presentation/d/e/2PACX-1vQz6UqlYIH85yDaKvGav8kClUj8kCWhYFmJyGzpEEXPHEJPQJHiRg4T8LWUFg1MsS4gc4zXyARBhXU4/embed?start=false&loop=false&delayms=3000" >}}

