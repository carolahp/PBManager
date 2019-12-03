instantiation
newWithUIInDirectory: aFileReference
	| packagesListBootstrap packagesListFull |
	
	self deprecated: 'initialize from PBBuilderUI instead'.
	packagesListBootstrap := PBBuilder kernelGroup.
	packagesListFull := PBBuilder AllPackagesForHermes, PBBuilder TestsForBootstrap .
	^ self newWithUISrcPath: aFileReference  
		packagesListBootstrap: packagesListBootstrap 
		packagesListFull: packagesListFull
		pharoBootstraper: PBBootstrapManual for32Bits