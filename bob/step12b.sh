#!/bin/bash

p Now the Pull Request \#6 created by Alice is merged by Bob.

cd ../github/alice.git

shh git merge refactor-into-classes --no-ff -m "Merge Pull Request #6"

cd ../../
