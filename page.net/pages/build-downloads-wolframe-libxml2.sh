#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header.html.snip $SNIPDIR/downloads_wolframe_libxml2.html.snip $SNIPDIR/footer.html.snip > downloads_wolframe_libxml2.html
