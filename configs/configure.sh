#！/bin/bash

git clone https://github.com/supersonictw/virtual_host-client /app

ln -s /tmp/vhs.frontend.env /app/.env

cd /app

npm install
npm run generate

shopt -s dotglob
rm -rf /tmp/build/*
mv dist/* /tmp/build/
