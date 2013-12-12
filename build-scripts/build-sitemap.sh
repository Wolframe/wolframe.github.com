#!/bin/sh

cd ..
cat > sitemap.xml <<EOF
<?xml version='1.0' encoding='UTF-8'?>
<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd"
	xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
EOF

find . -type f -name '*.html' | \
	grep -v .git | grep -v template | grep -v webpage | \
	grep -v layout | grep -v snippets | \
	grep -v googleb69323e31515cbe2.html | grep -v gsearch.html | \
	grep -v 404.html | sed 's|^\./||g' | \
	xargs stat --format="%n %y" | \
	awk 'BEGIN {FS="[ ]"} {print "\t<url>\n\t\t<loc>http://wolframe.net/"$1"</loc>\n\t\t<lastmod>"$2"</lastmod>\n\t\t<changefreq>daily</changefreq>\n\t\t<priority>0.5</priority>\n\t</url>"}' \
	>> sitemap.xml

echo "</urlset>" >> sitemap.xml

