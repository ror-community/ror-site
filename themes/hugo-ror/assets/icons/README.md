# Icons

SVG icons for the site. `layouts/_partials/icon-css.html` turns each file into
a CSS class (`fa-<name>`, or `icon-<name>` for `material-*` files) in
`css/site.css`, drawn with a CSS mask. (Not in `css/hugo-ror.css`, which
ror-app also loads alongside its own Font Awesome.) Templates keep Font Awesome's markup, for example
`<i class="fa-solid fa-envelope"></i>`. This replaces the Font Awesome and
Material Icons webfonts, so pages load no icon fonts or icon stylesheets.

- All files except `material-search.svg`: [Font Awesome Free 6.6.0](https://fontawesome.com)
  by Fonticons, Inc. Icons licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
  (<https://fontawesome.com/license/free>). Comments were stripped from the files.
- `material-search.svg`: the "search" icon from Google's
  [Material Icons](https://github.com/google/material-design-icons), licensed
  [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0).

To add a Font Awesome icon, copy `svgs/<style>/<name>.svg` from the
Font Awesome Free release into this folder (strip its license comment if you
like; this README covers attribution). Templates and the `callout` shortcode
can then use it by its class name, for example `fa-solid fa-<name>`. An icon
name with no file here renders as nothing.
