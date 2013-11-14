#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"
cat $SNIPDIR/header_support.html.snip $SNIPDIR/faq.html.snip $SNIPDIR/footer.html.snip > faq.html
