#!/bin/bash

p Now the Pull Request \#2 created by Alice is merged by Bob.

cd ../github/alice.git

shh git merge moving-sources --no-ff -m "Merge Pull Request #2"

cd ../../
