#/bin/sh

# New example

./build-page.sh -f ../snippets/index.html.snip -a Home -s > index-page.html
./build-page.sh -f ../snippets/gsearch.html.snip -n > gsearch.html
./build-page.sh -f ../snippets/contact.html.snip -a Contact > contact.html
./build-page.sh -f ../snippets/copyright.html.snip -n > copyright.html
./build-page.sh -f ../snippets/downloads.html.snip -n > downloads.html
./build-page.sh -f ../snippets/support.html.snip -n > support.html
./build-page.sh -f ../snippets/faqs.html.snip -n > faqs.html
./build-page.sh -f ../snippets/faq_license.html.snip -n > faq_license.html
./build-page.sh -f ../snippets/faq_installation.html.snip -n > faq_installation.html

./build-documentation.sh
#./build-index.sh
./build-404.sh
./build-doxygen-templates.sh
./build-docbook-xmlnippets.sh

mv -f *.html ..
