#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo "========================================="
echo "      git Activity Tracker"
echo "========================================="

repo=$(basename "$(git rev-parse --show-toplevel)")

echo "Repository Name : $repo"
branch=$(git branch --show-current)
echo "branch : $branch"
remote=$(git remote get-url origin)
echo "Remote URL : $remote"
echo "-------------------------------------------"

Commits=$(git rev-list --count HEAD)
echo "Total-commits : $Commits"
branches=$(git branch | wc -l)
echo "total-Branches : $branches"
contri=$(git shortlog -sn | wc -l)
echo "Contributions : $contri"
echo "-----------Commit Details-------------------"
name=$(git log --pretty="%an" | sort | uniq)
echo "Author name : $name"
last_date=$(git log -1 --pretty=format:"%cd" --date=short)
echo "Last Commit Date : $last_date"
last_time=$(git log -1 --pretty=format:"%cd" --date=format-local:"%I:%M:%S %p")
echo "Last commit Timing: $last_time"
echo "------------Repository Helth-----------------"
tracked_files=$(git ls-files | wc -l)
echo "Tracked files: $tracked_files"
repo_size=$(du -sh . | cut -f1)
echo "Repository size: $repo_size"
git_size=$(du -sh .git | cut -f1)
echo "git Repository size: $git_size"
echo "------------------CHECKING-PART-----------------------------"
if git status --porcelain | grep -q .; then
    echo -e "${RED} Repository Status : Uncommitted changes found${NC}"
else
    echo -e "${GREEN} Repository Status : Working tree clean${NC}"
fi 
echo "-----------------------REPO-QUALITY--------------------------"

bad_messages="test update abc temp hello fix demo sample"
count=0
poor_list=""
while read -r msg
do
    lower=$(echo "$msg" | tr '[:upper:]' '[:lower:]')

    if echo "$bad_messages" | grep -wq "$lower"
    then
        count=$((count + 1))
        poor_list="$poor_list\n- $msg"
    fi
done < <(git log --pretty=format:"%s")
if [ "$count" -eq 0 ]
then
    echo -e "${GREEN}✔ All commit messages are meaningful${NC}"
else
    echo -e "${RED}✘ $count commit(s) have non-descriptive messages${NC}"
    echo
    echo "Poor commit messages:"
    echo -e "$poor_list"
fi
echo "-----------------------All-Commit-Dates-----------------------------"
all_dates=$(git log --pretty=format:"%ad | %s" --date=short)
echo "All Commit Dates: $all_dates"

