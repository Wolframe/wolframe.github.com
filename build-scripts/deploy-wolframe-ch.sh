#!/bin/sh

rsync --exclude .git --exclude build-scripts \
	--exclude template --exclude snippets \
	--exclude README --exclude CNAME --exclude license.txt \
	-av . /mnt/vps/var/www/www.wolframe.ch/
