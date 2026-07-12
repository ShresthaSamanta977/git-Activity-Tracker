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
details=$(git log --pretty=format:"%h - %an, %ar:%s")
echo "Commit-Details : $details"
