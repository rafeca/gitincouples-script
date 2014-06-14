#!/bin/bash

p In this step a new github repository is created by Alice.

cd ../github/alice.git

shh git init
shh git config user.name "github"
shh git config user.email "github@localhost.com"
shh git config receive.denyCurrentBranch ignore

cd ../../
