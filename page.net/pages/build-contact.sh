#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"

# Change the active menu entry
TMPFILE="header.$$.tmp"

cat $SNIPDIR/header.html.snip $SNIPDIR/contact.html.snip $SNIPDIR/footer.html.snip > contact.html
