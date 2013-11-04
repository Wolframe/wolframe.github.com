#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"

cat $SNIPDIR/header-slider.html.snip $SNIPDIR/index.html.snip $SNIPDIR/footer.html.snip > index.html
