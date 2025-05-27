#!/bin/env bash

# script path
script_path=$(
    cd -- "$(
        dirname -- "${BASH_SOURCE[0]}"
    )" &>/dev/null && pwd
)

cd $script_path

# delete database
rm brfn.db

# create database
sqlite3 brfn.db <setup.sqlite
