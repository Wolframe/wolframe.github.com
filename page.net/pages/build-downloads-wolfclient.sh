#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/downloads_wolfclient.html.snip $SNIPDIR/footer.html.snip > downloads_wolfclient.html
