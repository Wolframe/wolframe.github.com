#/bin/sh

./build-downloads.sh
./build-downloads-Wolframe.sh
./build-downloads-wolfclient.sh

mv -f *.html ..
