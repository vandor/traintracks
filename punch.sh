#!/bin/bash
if [ -n "$1" ]; then
  timenow=$(date --date="$1")
else
  timenow="$(date)"
fi
echo $timenow >> punchcard.txt
git add punchcard.txt
GIT_COMMITTER_DATE="$timenow" GIT_AUTHOR_DATE="$timenow" git commit -m "$timenow"
