#!/bin/bash

exe git checkout master
exe git pull upstream master

exe git checkout move-refactor

exe git rebase master

p Downloading rover.js file with the conflict resolved...
shh wget https://gist.github.com/rafeca/a8a4e2361c68cabaf8fb/raw/rover.js -O js/rover.js

exe git add js/rover.js

exe git rebase --continue

# push will fail because the history has been changed
exe git push origin move-refactor

exe git push -f origin move-refactor
