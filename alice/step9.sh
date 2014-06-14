#!/bin/bash

exe git remote add bob ../github/bob.git
exe git remote update bob
exe git branch --track avoiding-repetition bob/avoiding-repetition
exe git checkout avoiding-repetition

p "\nNow the Pull Request #4 created by Bob is merged by Alice.\n"
cd ../github/alice.git

shh git fetch ../bob.git avoiding-repetition
shh git merge FETCH_HEAD --no-ff -m "Merge Pull Request #4"

shh cd -

exe git checkout master
exe git pull origin master
