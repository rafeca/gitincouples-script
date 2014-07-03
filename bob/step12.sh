#!/bin/bash

exe git checkout -b move-refactor

p Downloading the changes in rover.js file...
shh wget https://gist.github.com/rafeca/b80dbb15c535b94fa57f/raw/rover.js -O js/rover.js

exe git add js/rover.js

exe git commit -m 'Avoid repetition in move() command'

exe git push origin move-refactor

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Bob and create the Pull Request \#5
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that the Pull Request \#5 is created in github by Bob.
