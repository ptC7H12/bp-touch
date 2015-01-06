#!/bin/bash
mkdir ./temp
wget –P ./temp https://www.dropbox.com/s/v8vr9v4wtpwqvd1/patch.sh?dl=0
wget –P ./temp https://www.dropbox.com/s/nr8w2mao17baghm/xbmc-bp-patch1.patch?dl=0
wget –P ./temp https://www.dropbox.com/s/xma17sl8h12l4bx/xbmc-bp-patch2.patch?dl=0
wget –P ./temp https://www.dropbox.com/s/3xyp6cr79o7a9u7/xbmc-bp-patch3.patch?dl=0 
wget –P ./temp https://www.dropbox.com/s/axq6ay6o5i8rhmq/xbmc-bp-patch4.patch?dl=0 
wget –P ./temp https://www.dropbox.com/s/lza88bm1xugee9m/xbmc-bp-patch5.patch?dl=0 

cp ./temp/patch.sh?dl=0 ~/lemedia/xbmc/ patch.sh
cp ./temp/patch.sh?dl=0 ~/lemedia/xbmc/ xbmc-bp-patch1.patch
cp ./temp/patch.sh?dl=0 ~/lemedia/xbmc/ xbmc-bp-patch2.patch
cp ./temp/patch.sh?dl=0 ~/lemedia/xbmc/ xbmc-bp-patch3.patch
cp ./temp/patch.sh?dl=0 ~/lemedia/xbmc/ xbmc-bp-patch4.patch
cp ./temp/patch.sh?dl=0 ~/lemedia/xbmc/ xbmc-bp-patch5.patch

chmod a+x ./patch.sh
./patch.sh
