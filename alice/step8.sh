#!/bin/bash

exe git checkout refactoring-moving-forward-and-backward

p Downloading the changes to fix Bob\'s concerns...
shh wget https://gist.github.com/rafeca/b5acf011311b500465c8/raw/rover.js -O js/rover.js

exe git add js/rover.js
exe git commit -m "Reduce access to position"
exe git push origin refactoring-moving-forward-and-backward
