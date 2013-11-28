#!/bin/bash

# Build the contact page out of the snipets

SNIPDIR="../snippets"

cat $SNIPDIR/header.html.snip $SNIPDIR/doxygen_start.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|\(src="\)|\1/|g' | \
	sed 's|href="/http|href="http|g' | \
	sed 's|<title>\([^<]*\)</title>|<!--BEGIN PROJECT_NAME--><title>$projectname: $title</title><!--END PROJECT_NAME-->\n	<!--BEGIN !PROJECT_NAME--><title>$title</title><!--END !PROJECT_NAME-->\n\t<meta name="generator" content="Doxygen $doxygenversion"/>|g' | \
	sed 's|<li><a href="/documentation.html"|<li class="active"><a href="/documentation.html"|g' | \
	sed -e "/<\/head>/{r $SNIPDIR/doxygen_head.html.snip" -e 'd}' \
	> header-doxygen-webpage.html

cat $SNIPDIR/doxygen_end.html.snip $SNIPDIR/footer.html.snip | \
	sed 's|\(href="\)\([^"]\)|\1/\2|g' | \
	sed 's|\(src="\)|\1/|g' | \
	sed 's|href="//|href="/|g' | \
	sed 's|href="/#|href="#|g' | \
	sed 's|src="//|src="/|g' | \
	sed 's|href="/http|href="http|g' | \
	sed 's|href="/javascript|href="javascript|g' | \
	sed 's|src="/http|src="http|g' | \
	sed -E 's|src="/[$]|src="$|g' \
	> footer-doxygen-webpage.html
