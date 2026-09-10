# ror-site

### Research Organisation Registry website

## Local setup

### Prerequisites

- [mise](https://mise.jdx.dev/) (recommended), or Homebrew
- Hugo 0.165.0 (standard edition)
- Dart Sass 1.102.0

With mise (uses the committed `.mise.toml`):

```bash
mise install
hugo version              # expect 0.165.0
sass --embedded --version # expect 1.102.0
```

With Homebrew:

```bash
brew install hugo sass/sass/sass
```

## Running locally

1. Start the hugo server

        hugo serve --disableFastRender

2. Visit the site at http://localhost:1313

Alternately, on MacOS, run ```bash preview-local.command``` to check dependencies, start the server and open the site in Chrome.

# Content editing

- All content editing should be done locally in feature branches.
- Use persistent feature branches such as `events-page`, `content-tweaks,` and `broken-links` to make recurrent content-only changes. 
- When you have changes ready to push to dev, open a pull request to merge the feature branch to the dev branch.
- Do not merge or push content changes (even small content changes such as typo fixes) directly to dev, staging, or master without pull requests.
- If you have sufficient permissions (Write, Maintain, or Admin) you can approve and merge your own content pull requests. 

# Development

- Features, bugs, and maintenance issues for the ROR website should be   opened on the [ROR Roadmap](https://github.com/ror-community/ror-roadmap) and managed in the [ROR Website Development project](https://github.com/orgs/ror-community/projects/28).
- All development should be done locally in feature branches.
- When you have changes ready to push to dev, open a pull request to merge the feature branch to the dev branch.
- Do not merge or push changes directly to dev, staging, or master without pull requests.
- Pull requests to dev for configuration, theme, and code changes must be reviewed, approved, and merged by the ROR Technical Lead. 

# Deployment
All changes should be deployed to dev first, followed by staging and production:

1. Merge pull request from feature branch to dev branch to deploy to dev.ror.org
2. Open a pull request from dev branch against staging branch and merge to deploy to staging.ror.org
2. Open a pull request from staging branch against master branch and merge to deploy to ror.org

Deployment is handled by [GitHub actions](https://github.com/ror-community/ror-site/actions)

- **Build PR** action builds (no deploy) on pull requests
- **Deploy Dev** action deploys to dev.ror.org on push/merge to dev branch
- **Deploy Staging** action deploys to staging.ror.org on push/merge to staging branch
- **Deploy Master** action deploys to ror.org on push/merge to master branch

Environment configs are complete TOML files: `dev.toml`, `staging.toml`, and `live.toml`. Local development uses the canonical `hugo.toml`. When bumping Hugo or Dart Sass, update `.mise.toml` and the GitHub Actions workflows together. A Dart Sass bump also needs a new `DART_SASS_SHA256` for `dart-sass-<version>-linux-x64.tar.gz`.

## Notes

- ror-site CSS is also used by [ror-app](https://github.com/ror-community/ror-app). Please consider impacts of CSS changes on ror-app.
- Any header and footer changes made to ror-site need to be duplicated in [ror-app](https://github.com/ror-community/ror-app). 
- The ror-site theme was originally based on the [Hugo Universal Theme](https://themes.gohugo.io/themes/hugo-universal-theme/).
