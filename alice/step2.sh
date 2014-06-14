#!/bin/bash

echo "The Mars Rover Kata: an implementation by Alice." >> README.md

exe git init
git config user.name "Alice"
git config user.email "alice@localhost.com"
git config color.ui false
exe git remote add origin ../github/alice.git
exe git add README.md
exe git commit -m 'Here is the first commit!'
exe git push origin master
