#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../../snippets"
cat $SNIPDIR/header_downloads.html.snip $SNIPDIR/downloads/downloads_wolframe_sqlite3.html.snip $SNIPDIR/footer.html.snip > downloads_wolframe_sqlite3.html
