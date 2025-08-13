#!/bin/bash

# Make a variable called INJECT_DATE equal to whatever is contained in the .estrogen_cycle file
INJECT_DATE="$HOME/.estrogen-cycle"

# if the file does not exist yet, then
# store the output of the date command to the INJECT_DATE variable
if [ ! -f "$INJECT_DATE" ]; then
    date +%Y-%m-%d > "$INJECT_DATE"
    echo "new estrogen cycle started!"
    echo "~/.estrogen-cycle file created"
fi

# read the date from the existing variable
# i.e. cat out the INJECT_DATE which is equal to the contents of the .estrogen-cycle file
INJECT_DATE=$(cat "$INJECT_DATE")

# get today's date
CURRENT_DATE=$(date +%Y-%m-%d)

# subtract injection date from current date to get the seconds past since last injection
# divde the difference by seconds in a day to get the days past
DAYS_PASSED=$(( ( $(date -d "$CURRENT_DATE" +%s) - $(date -d "$INJECT_DATE" +%s) ) / 86400 ))

# output day of estrogen cycle
echo "You are on day $DAYS_PASSED of your injection cycle"
