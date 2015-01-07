#!/bin/bash

XBMCGIT=https://github.com/ptC7H12/xbmc.git
XBMCBRANCH=Gotham-A10

export GIT_SSL_NO_VERIFY=1

echo
echo "Checking for git sources..." 
echo

if [ -d xbmc ]
	then
		echo "xbmc allready exists!"
	else
		echo "downloading git sources!"
		git clone $XBMCGIT
fi

cd xbmc
git checkout $XBMCBRANCH
