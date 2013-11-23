#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/solutions.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|<li><a href="solutions.html|<li class="active" href="solutions.html|g' \
	> solutions.html
