#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header_support.html.snip $SNIPDIR/support.html.snip $SNIPDIR/footer.html.snip > support.html
