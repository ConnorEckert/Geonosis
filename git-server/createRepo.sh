#!/bin/bash

mkdir ./admin
cd ./admin && git init
echo "#!/bin/sh"> test.sh
echo "echo 'I dont like sand. Its coarse and rough and irritating, and it gets everywhere'" >> test.sh
git add .
git commit -m "init repo" -a
git remote add origin ssh://admin@localhost/admin
git push -f origin master

