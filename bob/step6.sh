#!/bin/bash

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Bob and create a Pull Request in Alice repository
  p Do not continue to the next step until finished
  exit
fi

p In this step the script simulates the creation of Pull Request \#1 by Bob.
