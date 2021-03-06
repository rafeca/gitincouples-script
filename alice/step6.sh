#!/bin/bash

exe mkdir js
exe git mv *.js js/

exe git status

exe git checkout -b moving-sources

exe git branch -a

p Fixing the paths to the JS scripts in index.html...

sed -i -e 's/grid/js\/grid/g' index.html
sed -i -e 's/rover/js\/rover/g' index.html
sed -i -e 's/tests/js\/tests/g' index.html
rm index.html-e

exe git status

exe git add index.html
exe git commit -m 'Sources moved to a better emplacement'
exe git push origin moving-sources


if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Alice and create the Pull Request \#2
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that the Pull Request \#2 is created in github by Alice.
