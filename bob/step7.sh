#!/bin/bash

exe git branch

exe git checkout master
exe git pull upstream master

exe git diff --name-status ORIG_HEAD

exe git push origin master
