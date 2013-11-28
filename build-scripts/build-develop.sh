#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/develop.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|\(src="\)|\1http://www:wolframe/ch/|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|href="/\(http\)|href="\1|g' | \
	sed 's|href="/mailto|href="mailto|g' | \
	sed 's|<li><a class="drop" href="support.html"|<li class="active"><a class="drop" href="support.html"|g' \
	> develop.html
