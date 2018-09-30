#/bin/bash

# renaming doesn't work yet, also be careful of renaming other files...
# echo "Renaming files with spaces"
# find . -name "* *" -type f | rename 's/ /_/g' *   # do the directories first

echo "Backing up Documents"
git add ~/Documents -A
git status -s
DATE=`date '+%Y-%m-%d %H:%M:%S'`
git commit -m "$DATE"
git push origin master -q

echo "Backup complete. Unexpected behavior may occur with file names containing spaces."
echo "Run command: 'find . -name "* *" -type f' to view these files."
