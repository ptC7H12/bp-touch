XBMCGIT=https://github.com/ptC7H12/xbmc.git
XBMCBRANCH=Gotham-A10

all:		dep xbmcgit xbmcpatch xbmcinstall

dep: 	
			chmod a+x ./install-dep.sh
			./install-dep.sh
			
xbmcgit:
			git clone $(XBMCGIT)
			cd xbmc &&\ 
			git checkout $(XBMCBRANCH)
			
xbmcinstall:
			chmod a+x ./xbmc/install/install-xbmc.sh			
			cd xbmc/install &&\
			./install-xbmc.sh
			
			chmod a+x ./start-xbmc.sh
			chmod a+x ./create_tar.sh
			
xbmcpatch:
			chmod a+x ./xbmc/install/install-patch.sh
			cd xbmc/install &&\
			./install-patch.sh

lubuntu:	
			chmod a+x ./xbmc/install/install-patch-lubuntu.sh
			cd xbmc/install &&\
			./install-patch-lubuntu.sh

