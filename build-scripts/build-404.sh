#!/bin/bash

# Build the 404 page out of the snipets

SNIPDIR="../snippets"

cat $SNIPDIR/header.html.snip $SNIPDIR/404.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1http://www.wolframe.ch/\2|g' | \
	sed 's|\(src="\)|\1http://www:wolframe/ch/|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|href="/\(http\)|href="\1|g' | \
	sed 's|href="/mailto|href="mailto|g' \
	> 404.html
