#!/bin/bash

SNIPDIR="../snippets"

# 1) The header HTML code inside the body (menu, navigation)

cat > header-webpage.html <<EOF
<?xml version="1.0" encoding="UTF-8" ?>
<htmlcode>
EOF

cat $SNIPDIR/header.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|src="//|src="/|g' | \
	sed 's|href="//|href="/|g' | \
	sed 's|href="/http|href="http|g' | \
	sed '/<body.*/d' | \
	sed '/<!DOCTYPE.*/d' | \
	sed '/<html.*/d' | \
	sed '/<head>/,/<\/head>/d' | \
	sed 's|<li><a href="/documentation.html"|<li class="active"><a href="/documentation.html"|g' \
	>> header-webpage.html

cat >> header-webpage.html <<EOF
</htmlcode>
EOF

# 2) The content of the 'head' tag

cat > head-webpage.html <<EOF
<?xml version="1.0" encoding="UTF-8" ?>
<htmlcode>
EOF

cat $SNIPDIR/header.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|\(src="\)\([^"]\)|\1/\2|g' | \
	sed 's|href="//|href="/|g' | \
	sed '/<!DOCTYPE.*/d' | \
	sed '/<html.*/d' | \
	sed '/<head>/d' | \
	sed '/<\/head>/d' | \
	sed '/<body/,//d' \
	>> head-webpage.html

cat >> head-webpage.html <<EOF
</htmlcode>
EOF

# 3) the footer

cat > footer-webpage.html <<EOF
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [
 <!ENTITY nbsp "&#xa0;">
 <!ENTITY copy "&#169;">
]>

<htmlcode>
EOF

cat $SNIPDIR/footer.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|src="//|src="/|g' | \
	sed 's|href="//|href="/|g' | \
	sed 's|href="/http|href="http|g' | \
	sed '/<\/body>/d' | \
	sed '/<\/html>/d' \
	>> footer-webpage.html

cat >> footer-webpage.html <<EOF
</htmlcode>
EOF
