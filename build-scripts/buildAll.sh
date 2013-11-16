#/bin/sh

./build-downloads.sh
cd downloads
./build-downloads-wolframe.sh
./build-downloads-wolfclient.sh
./build-downloads-wolframe-cjson.sh
./build-downloads-wolframe-client.sh
./build-downloads-wolframe-freeimage.sh
./build-downloads-wolframe-libclient.sh
./build-downloads-wolframe-libhpdf.sh
./build-downloads-wolframe-libxml2.sh
./build-downloads-wolframe-lua.sh
./build-downloads-wolframe-pam.sh
./build-downloads-wolframe-postgresql.sh
./build-downloads-wolframe-python.sh
./build-downloads-wolframe-sasl.sh
./build-downloads-wolframe-sqlite3.sh
./build-downloads-wolframe-textwolf.sh
cd ..
./build-contact.sh
./build-documentation.sh
./build-solutions.sh
#./build-index.sh
./build-index-page.sh
./build-support.sh
./build-faq.sh
cd faqs
./build-faqs-installation.sh
./build-faqs-license.sh
cd ..
./build-develop.sh
cd development
./build-development_daily_builds.sh
cd ..

mv -f *.html ..
mv -f downloads/*.html ../downloads/.
mv -f faqs/*.html ../faqs/.
mv -f development/*.html ../development/.
