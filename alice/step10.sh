#!/bin/bash

exe git checkout -b refactor-into-classes

p Downloading the changes in rover.js file...
shh wget https://github.com/lodr/gitincouples/raw/master/kata/classes.zip
shh unzip -o classes.zip
shh rm classes.zip

exe git add js/*.js
exe git commit -m 'Convert static methods into objects'
exe git push origin refactor-into-classes

p Now the Pull Request \#6 is created in github by Alice.
