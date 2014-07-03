#!/bin/bash

exe git checkout -b refactor-into-classes

p Downloading the changes in rover.js file...
shh wget https://github.com/lodr/gitincouples/raw/master/kata/classes.zip
shh unzip -o classes.zip
shh rm classes.zip

exe git add js/*.js
exe git commit -m 'Convert static methods into objects'
exe git push origin refactor-into-classes

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Alice and create the Pull Request \#6
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that the Pull Request \#6 is created in github by Alice.
