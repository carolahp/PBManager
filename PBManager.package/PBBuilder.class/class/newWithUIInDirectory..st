instance creation
newWithUIInDirectory: aFileReference
	| packagesListBootstrap packagesListFull |

	packagesListBootstrap := PBBuilder kernelGroup.
	packagesListFull := PBBuilder AllPackagesForHermes, PBBuilder TestsForBootstrap .
	^ self newWithUISrcPath: aFileReference  
		packagesListBootstrap: packagesListBootstrap 
		packagesListFull: packagesListFull
		pharoBootstraper: PBBootstrapManual for32Bits