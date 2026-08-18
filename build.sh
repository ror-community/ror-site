#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Builds ror-site on Vercel (Dart Sass 1.102.0; Hugo comes from Vercel).
#
# Pin Hugo with HUGO_VERSION=0.165.0 in the Vercel project. Without it the
# Hugo preset defaults to 0.58.2.
#------------------------------------------------------------------------------

set -euo pipefail

HUGO_VERSION=0.165.0
DART_SASS_VERSION=1.102.0
DART_SASS_SHA256=2a2ce6036f94534b39356252b1a3d4aa7879ab139c73bf62f7c9b5beafcfc367

TZ=UTC
HUGO_CACHEDIR="${PWD}/.vercel/cache/hugo"

cleanup() {
  if [[ -n "${build_temp_dir:-}" && -d "${build_temp_dir}" ]]; then
    rm -rf "${build_temp_dir}"
  fi
}

trap cleanup EXIT SIGINT SIGTERM

hugo_config_for_branch() {
  case "${1:-}" in
    master) echo live.toml ;;
    staging) echo staging.toml ;;
    dev) echo dev.toml ;;
    *) echo hugo.toml ;;
  esac
}

main() {
  export TZ
  export HUGO_CACHEDIR

  build_temp_dir=$(mktemp -d)
  mkdir -p "${HOME}/.local"

  echo "Installing Dart Sass ${DART_SASS_VERSION}..."
  curl -sfL --output-dir "${build_temp_dir}" -O \
    "https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
  echo "${DART_SASS_SHA256}  ${build_temp_dir}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz" | sha256sum -c -
  tar -C "${HOME}/.local" -xf "${build_temp_dir}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
  export PATH="${HOME}/.local/dart-sass:${PATH}"

  echo "Logging tool versions..."
  hugo version
  sass --embedded --version
  hugo_ver="$(hugo version)"
  if [[ "${hugo_ver}" != *"${HUGO_VERSION}"* ]]; then
    echo "Expected Hugo ${HUGO_VERSION} (set HUGO_VERSION=${HUGO_VERSION} in the Vercel project). Got: ${hugo_ver}" >&2
    exit 1
  fi

  hugo_config="${HUGO_CONFIG:-$(hugo_config_for_branch "${VERCEL_GIT_COMMIT_REF:-}")}"
  if [[ -n "${HUGO_BASEURL:-}" ]]; then
    hugo_baseurl="${HUGO_BASEURL}"
  elif [[ "${VERCEL_ENV:-}" == production && -n "${VERCEL_PROJECT_PRODUCTION_URL:-}" ]]; then
    hugo_baseurl="https://${VERCEL_PROJECT_PRODUCTION_URL}/"
  elif [[ -n "${VERCEL_URL:-}" ]]; then
    hugo_baseurl="https://${VERCEL_URL}/"
  else
    hugo_baseurl=""
  fi

  echo "Building with --config ${hugo_config}${hugo_baseurl:+ --baseURL ${hugo_baseurl}}..."
  hugo_args=(build --gc --minify --logLevel info --config "${hugo_config}")
  if [[ -n "${hugo_baseurl}" ]]; then
    hugo_args+=(--baseURL "${hugo_baseurl}")
  fi
  hugo "${hugo_args[@]}"
}

main "$@"
