#!/bin/bash

if [ -z $1 ];
then echo "gimme commit message";
exit;
fi

make -j html
rsync -av --delete _build/html/ docs/
git add *
git commit -m "$1"
git push porigin master