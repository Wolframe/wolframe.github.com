#/bin/sh

# New example

./build-page.sh -f ../snippets/index.html.snip -a Home -s > index-page.html
./build-page.sh -f ../snippets/gsearch.html.snip -n > gsearch.html
./build-page.sh -f ../snippets/contact.html.snip -a Contact > contact.html
./build-page.sh -f ../snippets/copyright.html.snip -n > copyright.html
./build-page.sh -f ../snippets/documentation.html.snip -a Documentation > documentation.html
./build-page.sh -f ../snippets/downloads.html.snip -a Downloads > downloads.html
./build-page.sh -f ../snippets/support.html.snip -a Support > support.html
./build-page.sh -f ../snippets/faqs.html.snip -a Support > faqs.html
./build-page.sh -f ../snippets/faq_license.html.snip -a Support > faq_license.html
./build-page.sh -f ../snippets/faq_installation.html.snip -a Support > faq_installation.html
./build-page.sh -f ../snippets/404.html.snip -n > 404.html

./build-doxygen-templates.sh
./build-docbook-xmlnippets.sh

mv -f *.html ..
