#!/bin/bash

npm i;

npm run build;

npm version patch;

git add .;
git commit -m "build";
git push origin master;

# ssh server "cd /data/www &&  git pull origin master";

# ssh server "cd /data/www && npm i";
# ssh server "cd /data/www && npm run vue-cli-service build;";