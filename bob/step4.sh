#!/bin/bash

exe git checkout -b split-sources

exe git status

p Downloading the splitted version of the code...

shh wget https://github.com/lodr/gitincouples/raw/master/kata/splitsource.zip
shh unzip -o splitsource.zip
shh rm splitsource.zip

exe git status
