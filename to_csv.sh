#!/bin/bash

# script path
script_path=$(
    cd -- "$(
        dirname -- "${BASH_SOURCE[0]}"
    )" &>/dev/null && pwd
)

cd $script_path

# # file to convert to csv
# echo "Which file in the current dir would you like to convert to a csv?"
# read $file

# # csv header and number of commas to append
# echo "Write the header for this csv file (using comma-separated values):"
# read $header

# lalala=$(grep -o ',' <<<"$header")

# $lalala

# # add comma to the end of each line
# sed 's/$/,/' $file >out.txt
# header="ptbr2,ptbr3,probably_correct,definition"

file="words.txt"
sed 's/$/,,,/' $file >>"words.csv"
