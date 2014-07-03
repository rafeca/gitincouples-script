#!/bin/bash

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Bob and merge the Pull Request \#2 created by Alice
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that the Pull Request \#2 created by Alice is merged by Bob.

cd ../github/alice.git

shh git merge moving-sources --no-ff -m "Merge Pull Request #2"

cd ../../
