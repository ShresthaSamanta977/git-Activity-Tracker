#!/bin/bash

declare -A graph

while read date
do
    day=$(date -d "$date" +"%a")
    week=$(date -d "$date" +"%V")

    key="$week-$day"

    graph["$key"]=$(( ${graph["$key"]:-0} + 1 ))

done < <(git log --date=short --pretty=format:"%ad")

echo "Stored Commit Counts"
echo "--------------------"

for key in "${!graph[@]}"
do
    echo "$key = ${graph[$key]}"
done
echo
echo "Contribution Graph"
echo "------------------"

days=("Mon" "Tue" "Wed" "Thu" "Fri" "Sat" "Sun")
current_week=$(date +"%V")

weeks=()

for ((i=3; i>=0; i--))
do
    weeks+=($(printf "%02d" $((10#$current_week-i))))
done

printf "      "

for week in "${weeks[@]}"
do
    printf "W%-3s" "$week"
done

echo

for day in "${days[@]}"
do
    printf "%-5s " "$day"

    for week in "${weeks[@]}"
    do
        key="$week-$day"
        count=${graph[$key]:-0}

        if [ "$count" -eq 0 ]; then
            printf "🟥  "
        elif [ "$count" -eq 1 ]; then
            printf "⬜  "
        else
            printf "🟩  "
        fi
    done

    echo
done
echo "🟥 No commits"
echo "⬜ One commit"
echo "🟩 Multiple commits"