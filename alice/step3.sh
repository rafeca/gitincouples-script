#!/bin/bash

p Downloading and unzipping the initial code...

shh wget https://github.com/lodr/gitincouples/raw/master/kata/initialkata.zip
shh unzip -o initialkata.zip
shh rm initialkata.zip

exe git status
exe git add .
exe git status
exe git commit -m 'My initial code'
exe git push origin master
