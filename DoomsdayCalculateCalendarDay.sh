#!/bin/bash

daysAsString=("Sun" "Mon" "Tue" "Wed" "Thu" "Fri" "Sat")
daysMappingList=""
for i in "${!daysAsString[@]}"; do
    daysMappingList+="$i-${daysAsString[$i]}, "
done
daysMappingList=${daysMappingList%, } # Remove trailing comma and space

correctResponseCount=0
totalQuestionsAskedCount=0

startRangeDate=$(date -d "2025-01-01" +%s)
endRangeDate=$(date -d "2027-01-01" +%s)
range=$((endRangeDate - startRangeDate))

while true; do
    offset=$(awk -v r="$RANDOM" -v range="$range" 'BEGIN { srand(); print int(rand() * range) }')
    randomDateAsNumber=$((startRangeDate + offset))
    randomDateFormatted=$(date -d "@$randomDateAsNumber" +"%d-%b-%Y")
    actual_day=$(date -d "@$randomDateAsNumber" +%w)

    echo -n "Guess the day of the week ($daysMappingList) for: $randomDateFormatted     : " 
    read user_input

    if [ "$user_input" -eq 99 ]; then
        echo "Exiting the game."
        break
    fi

    if [ "$user_input" -ge 0 ] && [ "$user_input" -le 6 ]; then
        echo -n "   You guessed: ${daysAsString[$user_input]}, Actual day: ${daysAsString[$actual_day]}   - "
        totalQuestionsAskedCount=$((totalQuestionsAskedCount + 1))
        if [ "$user_input" -eq "$actual_day" ]; then
            correctResponseCount=$((correctResponseCount + 1))
            echo -n "Correct!"
        else
            echo -n "Incorrect."
        fi
        echo "      Score: $correctResponseCount/$totalQuestionsAskedCount"
    else
        echo "Invalid input. Please enter a number between 0 and 6, or 99 to quit."
    fi
done
