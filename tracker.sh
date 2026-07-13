#!/bin/bash

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