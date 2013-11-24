#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"

cat $SNIPDIR/header.html.snip $SNIPDIR/docbook_start.html.snip \
	> header-webpage.html

touch head-webpage.html

cat > footer-webpage.html <<EOF
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [
 <!ENTITY nbsp "&#xa0;">
 <!ENTITY copy "&#169;">
]>

<htmlcode>
EOF

cat $SNIPDIR/docbook_end.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|src="//|src="/|g' | \
	sed 's|href="/http|href="http|g' | \
	sed '/<\/body>/d' | \
	sed '/<\/html>/d' \
	>> footer-webpage.html

cat >> footer-webpage.html <<EOF
</htmlcode>
EOF
