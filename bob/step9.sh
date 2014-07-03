#!/bin/bash

exe git checkout -b avoiding-repetition

p Downloading the changes in rover.js file...
shh wget https://gist.github.com/rafeca/42f61ef288deb6232ae7/raw/rover.js -O js/rover.js

exe git add js/rover.js
exe git commit -m 'Avodiing some repetition'
exe git commit --amend -m 'Avoiding some repetition by refactoring turnRight and turnLeft'
exe git push origin avoiding-repetition

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Bob and create the Pull Request \#4
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that the Pull Request \#4 is created in github by Bob.
