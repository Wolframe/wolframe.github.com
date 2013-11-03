#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header_documentation.html.snip $SNIPDIR/documentation.html.snip $SNIPDIR/footer.html.snip > documentation.html
