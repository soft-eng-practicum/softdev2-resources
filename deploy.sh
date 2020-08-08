#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

git config user.email "cengique@users.noreply.github.com"
git config user.name "cengique-gh-bot"

cd public
git add --all && git commit -m "Publishing to gh-pages"
git push origin gh-pages
