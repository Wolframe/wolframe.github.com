#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../../snippets"
cat $SNIPDIR/header_faq.html.snip $SNIPDIR/faqs/faqs_installation.html.snip $SNIPDIR/footer.html.snip > faqs_installation.html
