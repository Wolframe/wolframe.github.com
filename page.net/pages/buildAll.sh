#/bin/sh

./build-downloads.sh
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
./build-contact.sh
./build-documentation.sh
./build-solutions.sh
./build-index.sh

mv -f *.html ..

