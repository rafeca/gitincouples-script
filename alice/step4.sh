#!/bin/bash

p Now the Pull Request \#1 created by Bob is merged by Alice.

cd ../github/alice.git

shh git fetch ../bob.git split-sources
shh git merge FETCH_HEAD --no-ff -m "Merge Pull Request #1"

cd ../../
