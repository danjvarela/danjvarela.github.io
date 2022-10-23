#!/usr/bin/env sh

# abort on errors
set -e

npm run build

echo > dist/.nojekyll

git add dist -f
git commit -m "Deploy page"
git subtree push --prefix dist origin gh-pages
