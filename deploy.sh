#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

#git worktree add -B gh-pages public upstream/gh-pages
#hugo

#cd public

#if [ -n "$GITHUB_AUTH_SECRET" ]
#then
#    touch ~/.git-credentials
#    chmod 0600 ~/.git-credentials
#    echo $GITHUB_AUTH_SECRET > ~/.git-credentials

#    git config credential.helper store
    git config user.email "cengique@users.noreply.github.com"
    git config user.name "cengique-gh-bot"
#fi
    cd public
    ls -lt
    git status
    git add --all && git commit -m "Publishing to gh-pages"
    git push origin gh-pages

#git add .
#git commit -m "Rebuild site"
#git push --force origin HEAD:master
