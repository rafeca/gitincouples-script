#!/bin/bash


if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Alice and merge the Pull Request \#5 created by Bob
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that the Pull Request \#5 created by Bob is merged.

cd ../github/alice.git

shh git fetch ../bob.git move-refactor
shh git merge FETCH_HEAD --no-ff -m "Merge Pull Request #5"

cd ../../
