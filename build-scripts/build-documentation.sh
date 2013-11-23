#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip | \
sed 's|<li><a href="documentation.html"|<li class="active"><a href="documentation.html"|g' \
	> _tmp
cat _tmp $SNIPDIR/documentation.html.snip $SNIPDIR/footer.html.snip \
	> documentation.html
rm -f _tmp
