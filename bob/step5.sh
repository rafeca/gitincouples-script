#!/bin/bash

exe git add "*.js"

exe git status

exe git add index.html

exe git status

exe git rm kata.js

exe git status

exe git commit -m 'Source is now split in three files'

exe git push origin split-sources
