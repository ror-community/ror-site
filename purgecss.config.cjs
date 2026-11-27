// Removes CSS rules that no page uses from the site's stylesheet,
// css/hugo-ror.css.
//
// Runs after `hugo build` over the finished site: build.sh (Vercel), the
// build-hugo action (S3 deploys) and the PR workflow. It reads every built
// HTML page, so it sees each class, id, element and attribute value the site
// outputs. `hugo server` is unaffected and keeps the full stylesheet.
//
// PURGECSS_DIR is the build output directory (default: public).
//
// Anything added to pages only by JavaScript must be safelisted below.
// js/nav.js adds no classes; it sets an inline style and aria-expanded.
const dir = (process.env.PURGECSS_DIR || 'public').replace(/\/+$/, '');

module.exports = {
  content: [`${dir}/**/*.html`, `${dir}/js/**/*.js`],
  css: [`${dir}/css/hugo-ror.css`],
  output: `${dir}/css/`,
  // Also drop @keyframes and @font-face rules that nothing left refers to.
  keyframes: true,
  fontFace: true,
  safelist: {
    // js/nav.js sets aria-expanded="true" when the mobile menu opens.
    greedy: [/aria-expanded/],
  },
};
