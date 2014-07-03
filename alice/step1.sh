#!/bin/bash

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Alice and create a new repository
  p Do not continue to the next step until the repository is created
  exit
fi


p In this step the script simulates that Alice creates a new github repository

cd ../github/alice.git

shh git init
shh git config user.name "github"
shh git config user.email "github@localhost.com"
shh git config receive.denyCurrentBranch ignore

cd ../../
