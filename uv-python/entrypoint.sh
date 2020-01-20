#!/bin/sh

cd /app
python3 utils/github_issues_to_md.py  $BRANCHES $REPO andrewgribben $AUTH
