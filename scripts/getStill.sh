#!/bin/bash

cd /usr/local/apache2/htdocs/cam1

Pic=$(ls *$(date +%Y%m%d%H)*-01.jpg | head -1)
cp -f $Pic /srv/http/9H/new.jpg

cd /srv/http/9H/

#rotate the pics
rm 9.jpg
mv 8.jpg 9.jpg
mv 7.jpg 8.jpg
mv 6.jpg 7.jpg
mv 5.jpg 6.jpg
mv 4.jpg 5.jpg
mv 3.jpg 4.jpg
mv 2.jpg 3.jpg
mv 1.jpg 2.jpg
mv new.jpg 1.jpg
