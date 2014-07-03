#!/bin/bash


if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Bob and add some comments in the Pull Request \#3
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates that some comments are added in the Pull Request \#3 created by Alice.
