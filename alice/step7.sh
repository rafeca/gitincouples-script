#!/bin/bash

exe git checkout master
exe git pull origin master
exe git checkout -b avoiding-repetition
exe git branch -m refactoring-moving-forward-and-backward

p Downloading the changes in rover.js file...
shh wget https://gist.github.com/rafeca/7b98d37f993a5e89b20e/raw/rover.js -O js/rover.js

exe git add js/rover.js
exe git commit -m 'Refactoring moveForward and moveBackward'
exe git push origin refactoring-moving-forward-and-backward

p Now the Pull Request \#3 is created in github by Alice.
