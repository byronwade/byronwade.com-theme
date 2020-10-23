#!/bin/bash

cd ./app/themes/byronwade.com

if [[ "$1" = push ]]; then
git push
else
yarn build:production

# Exit if build fails
if [[ "$?" != 0 ]]; then
echo '############################'
echo '# #'
echo '# BUILD FAILED! #'
echo '# #'
echo '############################'
exit 1
fi

composer install --no-dev
git add .
git commit -m "$1"
git push
composer install
fi