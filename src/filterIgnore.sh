#!/bin/sh
mkdir -m 777 $2
cp -l --parents $(cat <(comm -23 <(git -C $1 ls-files) <(git -C $1 ls-files -ciX .workshopignore)) <(git -C $1 ls-files -oX .workshopignore)) $2
