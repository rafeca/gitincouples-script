#!/bin/bash

exe git checkout master
exe git pull origin master

exe git log --graph --oneline --all --color
