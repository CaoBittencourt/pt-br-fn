#!/bin/env bash

# script path
script_path=$(
    cd -- "$(
        dirname -- "${BASH_SOURCE[0]}"
    )" &>/dev/null && pwd
)

cd $script_path

# delete database
rm ptbrfn.db

# create database
sqlite3 ptbrfn.db <setup.sqlite
