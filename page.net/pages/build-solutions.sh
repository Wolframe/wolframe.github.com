#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/solutions.html.snip $SNIPDIR/footer.html.snip > solutions.html
