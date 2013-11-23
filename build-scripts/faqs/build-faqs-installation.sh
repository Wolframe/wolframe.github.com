#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/faqs/faqs_installation.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|\(src="\)|\1/|g' | \
	sed 's|href="//|href="/|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|src="//|src="/|g' | \
	sed 's|src="/#|src="#|g' | \
	sed 's|href="/http|href="http|g' | \
	sed 's|href="/javascript|href="javascript|g' | \
	sed 's|src="/http|src="http|g' | \
	sed 's|href="/mailto|href="mailto|g' \
	> faqs_installation.html
