#!/bin/bash

# Build the copyright page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/copyright.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|<li><a href="contact.html|<li class="active" href="contact.html|g' \
	> copyright.html
