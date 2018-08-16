#!/bin/bash

npm i;

npm run build;

npm version patch;

git add .;
git commit -m "build";
git push origin master;

ssh -t server "
cd /data/www/ronan; 
ls; 
sudo git pull origin master;
npm i;
npm run vue-cli-service build;
"