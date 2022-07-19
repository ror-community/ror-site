# ror-site

[![Build Status](https://travis-ci.com/ror-community/ror-site.svg?branch=master)](https://travis-ci.com/ror-community/ror-site)

### Research Organisation Registry community website

## Local setup

### Prerequisites

- Install Hugo https://gohugo.io/getting-started/installing

## Running locally

1. Start the hugo server

        hugo serve --disableFastRender --config localhost.toml

2. Visit the site at http://localhost:1313

Alternately, on MacOS, run ```bash preview-local.command``` to check dependencies, start the server and open the site in Chrome.

# Development

- All development should be done locally in feature branches.
- When you have changes ready to push to dev, open a pull request against the dev branch.
- Do not push changes directly to dev, staging or master.

# Deployment
All changes should be deployed to dev first, followed by staging and production:

1. Merge pull request from feature branch to dev branch to deploy to dev.ror.org
2. Open a pull request from dev branch against staging branch and merge to deploy to staging.ror.org
2. Open a pull request from staging branch against master branch and merge to deploy to ror.org

Deployment is handled by [Github actions](https://github.com/ror-community/ror-app/actions)

- **Deploy Dev** action deploys to dev.ror.org on push/merge to dev branch
- **Deploy Staging** action deploys to staging.ror.org on push/merge to staging branch
- **Deploy Master** action deploys to ror.org on push/merge to master branch

## Notes

- ror-site CSS is also used by [ror-app](https://github.com/ror-community/ror-app). Please consider impacts of CSS changes on ror-app.
- Any menu changes made to ror-site need to be duplicated in [ror-app](https://github.com/ror-community/ror-app)


