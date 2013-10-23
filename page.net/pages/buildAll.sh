#/bin/sh

./build-downloads.sh
./build-downloads-wolframe.sh
./build-downloads-wolfclient.sh

mv -f *.html ..
