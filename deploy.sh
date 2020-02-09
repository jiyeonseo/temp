#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

#git init
git add -A
git commit -m 'update blog'
git push git@github.com:jiyeonseo/test-page.git master:gh-pages

cd -
