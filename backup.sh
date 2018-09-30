#/bin/bash

DOCUMENTS_DIR=/Users/justinwei/Documents
DATE=`date '+%Y-%m-%d %H:%M:%S'`

git -C $DOCUMENTS_DIR add -A
git status -s
git -C $DOCUMENTS_DIR commit -m "$DATE"
git -C $DOCUMENTS_DIR push origin master -q

echo "Backup complete. Unexpected behavior may occur with file names containing spaces."
echo "Run command: 'find $DOCUMENTS_DIR -name \"* *\" -type f' to view these files.\n"
