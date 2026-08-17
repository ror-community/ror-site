set -e

cd -- "$(dirname "$BASH_SOURCE")"

if command -v mise >/dev/null 2>&1; then
  echo "mise installed OK"
  eval "$(mise activate bash)"
  mise install
elif command -v brew >/dev/null 2>&1; then
  echo "Homebrew installed OK"
  if ! command -v hugo >/dev/null 2>&1; then
    echo "Need to install Hugo"
    brew install hugo
  fi
  if ! command -v sass >/dev/null 2>&1; then
    echo "Need to install Dart Sass"
    brew install sass/sass/sass
  fi
else
  echo "Need mise (https://mise.jdx.dev/) or Homebrew to install Hugo and Dart Sass"
  exit 1
fi

hugo version
sass --embedded --version

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome http://localhost:1313/ &
hugo serve --disableFastRender
