#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header_downloads.html.snip $SNIPDIR/content_start.html.snip > header-downloads.html
cat $SNIPDIR/content_end.html.snip $SNIPDIR/footer.html.snip | sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|href="/\(http\)|href="\1|g' | \
	sed 's|href="/mailto|href="mailto|g' \
	> footer-downloads.html
