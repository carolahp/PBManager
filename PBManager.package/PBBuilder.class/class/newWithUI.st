example methods
newWithUI
	| path packagesListBootstrap packagesListFull |
	path := self bootstrapRepositoryPath asFileReference / 'src'.
	
	packagesListBootstrap := nil ."PBBuilder kernelGroup."
	packagesListFull := PBBuilder AllPackagesForHermes, PBBuilder TestsForBootstrap .
	^ self newWithUISrcPath: path 
		packagesListBootstrap: packagesListBootstrap 
		packagesListFull: packagesListFull
		pharoBootstraper: PBBootstrapManual for32Bits