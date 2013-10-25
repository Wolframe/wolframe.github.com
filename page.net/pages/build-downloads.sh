#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header_downloads.html.snip $SNIPDIR/downloads.html.snip $SNIPDIR/footer.html.snip > downloads.html
