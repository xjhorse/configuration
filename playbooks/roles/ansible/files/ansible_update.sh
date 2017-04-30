#!/bin/bash

# simple script to update ansible repo

find . -name *.pyc -exec rm -f {} \;

git pull --rebase

git submodule update --init --recursive
