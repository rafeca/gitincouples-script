#!/bin/bash

exe git remote add bob $gh_bob_url
exe git remote update bob
exe git branch --track avoiding-repetition bob/avoiding-repetition
exe git checkout avoiding-repetition

if [ $mock_gh != 'Y' ]; then
  p Go to github.com as Alice and merge the Pull Request \#4 created by Bob
  p Do not continue to the next step until finished...
  read nothing

else

  p In this step the script simulates that the Pull Request \#4 created by Bob is merged by Alice
  cd ../github/alice.git

  shh git fetch ../bob.git avoiding-repetition
  shh git merge FETCH_HEAD --no-ff -m "Merge Pull Request #4"

  shh cd -
fi

exe git checkout master
exe git pull origin master
