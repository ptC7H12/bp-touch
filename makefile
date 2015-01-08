XBMCGIT=https://github.com/ptC7H12/xbmc.git
XBMCBRANCH=Gotham-A10

dep: 	
			chmod a+x ./install-dep.sh
			./install-dep.sh
			
xbmcgit:
			git clone $(XBMCGIT)
			cd ./xbmc\ 
			checkout $(XBMCBRANCH)
			
xbmcinstall:
			cd ./xbmc/install\
			chmod a+x ./install-xbmc.sh\			
			./install-xbmc.sh
			
			chmod a+x ./start-xbmc.sh
			chmod a+x ./create_tar.sh
			
xbmcpatch:
			cd ./xbmc/install\
			chmod a+x ./install-patch.sh\
			./install-patch.sh

lubuntu:	cd ./xbmc/install\
			chmod a+x ./install-patch-lubuntu.sh\
			./install-patch-lubuntu.sh

all:		dep xbmcgit xbmcpatch xbmcinstall