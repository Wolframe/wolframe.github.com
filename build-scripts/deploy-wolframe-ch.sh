#!/bin/sh

rsync --exclude .git --exclude build-scripts \
	--exclude template --exclude snippets \
	-av . /mnt/vps/var/www/www.wolframe.ch/
