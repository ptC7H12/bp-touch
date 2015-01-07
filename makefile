
all:		dep xbmcgit xbmcpatch xbmcinstall

dep: 	
			chmod a+x ./install-dep.sh
			./install-dep.sh
			
xbmcgit:		
			chmod a+x ./install-git.sh
			./install-git.sh 
			
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

