#!/bin/sh
if [[ ! -d mysite ]]; then
    mkdir -p mysite
    cd mysite
    hugo new site .
    cd -
fi

if [[ ! -d vueapp ]]; then
    vue create vueapp # choose defaults
fi

cd vueapp
npm install jquery
npm install chart.js

npm run build # will create things in dist, but they will not have jquery or chart.js included
cd -
