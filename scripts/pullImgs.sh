#!/bin/bash
# TODO: doesn't work well when cam is offline
cd /var/www/9H/

rm *.jpg

for i in {1..9}
do
	wget 85.227.164.19:8080/9H/$i.jpg
done
