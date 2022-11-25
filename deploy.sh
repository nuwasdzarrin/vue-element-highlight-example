#!/usr/bin/env sh
# abort on errors
set -e
# build
yarn run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:nuwasdzarrin/vue-element-highlight-example.git master:gh-pages
cd -
# Lastly, make sure your script is executable!
# chmod +x deploy.sh
# source: https://medium.com/swlh/deploy-vue-app-to-github-pages-2ada48d7397e