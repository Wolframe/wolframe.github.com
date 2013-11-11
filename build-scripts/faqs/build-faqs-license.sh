#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../../snippets"
cat $SNIPDIR/header_faq.html.snip $SNIPDIR/faqs/faqs_license.html.snip $SNIPDIR/footer.html.snip > faqs_license.html
