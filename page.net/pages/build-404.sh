#!/bin/bash

# Build the 404 page out of the snipets

SNIPDIR="../snippets"

cat $SNIPDIR/header.html.snip $SNIPDIR/404.html.snip $SNIPDIR/footer.html.snip > 404.html
