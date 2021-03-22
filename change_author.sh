#!/bin/sh

git filter-branch -f --env-filter "
    GIT_AUTHOR_NAME='lukas0711'
    GIT_AUTHOR_EMAIL='73908062+lukas0711@users.noreply.github.com'
    GIT_COMMITTER_NAME='lukas0711'
    GIT_COMMITTER_EMAIL='73908062+lukas0711@users.noreply.github.com'
  " HEAD

git push --force --tags origin 'refs/heads/master'