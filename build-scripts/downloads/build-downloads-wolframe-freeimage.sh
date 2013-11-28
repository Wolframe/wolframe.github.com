#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/downloads/downloads_wolframe_freeimage.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|\(src="\)|\1/|g' | \
	sed 's|href="//|href="/|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|src="//|src="/|g' | \
	sed 's|src="/#|src="#|g' | \
	sed 's|href="/http|href="http|g' | \
	sed 's|src="/http|src="http|g' | \
	sed 's|href="/ftp|href="ftp|g' | \
	sed 's|href="/mailto|href="mailto|g' | \
	sed 's|href="/downloads_|href="downloads_|g' | \
	sed 's|<li><a href="/downloads.html"|<li class="active"><a href="/downloads.html"|g' \
	> downloads_wolframe_freeimage.html
