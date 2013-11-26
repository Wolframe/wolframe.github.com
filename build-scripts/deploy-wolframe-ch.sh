#!/bin/sh

rsync --exclude .git --exclude build-scripts \
	--exclude template --exclude snippets \
	--exclude README --exclude CNAME --exclude license.txt \
	--exclude page.org --exclude header-doxygen-webpage.html \
	--exclude footer-doxygen-webpage.html \
	--exclude head-webpage.html \
	--exclude header-webpage.html \
	--exclude footer-webpage.html \
	-av . /mnt/vps/var/www/www.wolframe.ch/

rsync -av index-baddomain.html /mnt/vps/var/www/html/index.html
