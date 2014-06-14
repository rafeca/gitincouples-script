#!/bin/bash

p Now the Pull Request \#5 created by Bob is merged.

cd ../github/alice.git

shh git fetch ../bob.git move-refactor
shh git merge FETCH_HEAD --no-ff -m "Merge Pull Request #5"

cd ../../
