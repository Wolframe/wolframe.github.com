#/bin/sh

# New example

./build-page.sh -f ../snippets/index.html.snip -a Home -s > index-page.html
./build-page.sh -f ../snippets/gsearch.html.snip -n > gsearch.html
./build-page.sh -f ../snippets/contact.html.snip -a Contact > contact.html
./build-page.sh -f ../snippets/copyright.html.snip -n > copyright.html
./build-page.sh -f ../snippets/downloads.html.snip -n > downloads.html

./build-documentation.sh
#./build-index.sh
./build-support.sh
./build-faq.sh
cd faqs
./build-faqs-installation.sh
./build-faqs-license.sh
cd ..
./build-404.sh
./build-doxygen-templates.sh
./build-docbook-xmlnippets.sh

mv -f *.html ..
mv -f faqs/*.html ../faqs/.
