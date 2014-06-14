#!/bin/bash

p Now the Pull Request \#3 created by Alice is merged by Bob.

cd ../github/alice.git

shh git merge refactoring-moving-forward-and-backward --no-ff -m "Merge Pull Request #3"

cd ../../
