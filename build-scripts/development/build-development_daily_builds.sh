#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../../snippets"
cat $SNIPDIR/header_support.html.snip $SNIPDIR/development/development_daily_builds.html.snip $SNIPDIR/footer.html.snip > development_daily_builds.html
