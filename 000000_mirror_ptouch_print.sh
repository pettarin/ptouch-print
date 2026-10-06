#!/bin/bash
set -eu

BRANCH=${1:-master}
UPSTREAM="upstream"   # https://git.familie-radermacher.ch/linux/ptouch-print.git/
ORIGIN="origin"       # https://github.com/pettarin/ptouch-print

PROJECT_DIRECTORY="/home/alberto/projects/ptouch-print"

echo "[INFO] Updating mirror ..."
echo "[INFO] Current datetime is: "
date --rfc-3339=s

cd $PROJECT_DIRECTORY
echo "[INFO] cd into git repository '$PROJECT_DIRECTORY'... done"
git checkout "$BRANCH"
echo "[INFO] git checkout $BRANCH ... done"
git pull "$UPSTREAM" "$BRANCH"
echo "[INFO] git pull $UPSTREAM $BRANCH... done"
git push "$ORIGIN" "$BRANCH"
echo "[INFO] git push $ORIGIN $BRANCH ... done"

echo "[INFO] Current datetime is: "
date --rfc-3339=s
echo "[INFO] Updating mirror ... done"
