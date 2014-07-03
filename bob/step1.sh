#!/bin/bash

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Bob and fork Alice repository
  p Do not continue to the next step until the repository is forked
  exit
fi

p In this step the script simulates that Bob forks Alice\'s github repository

cd ../github/bob.git

shh cp -R ../alice.git/.git .

cd ../../
