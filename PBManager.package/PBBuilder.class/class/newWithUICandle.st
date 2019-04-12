example methods
newWithUICandle
	| path packagesListBootstrap packagesListFull |
	path := self bootstrapRepositoryPath asFileReference  / 'srcPharoCandle'.
	
	packagesListBootstrap := nil .
	packagesListFull := nil .
	^ self newWithUISrcPath: path 
		packagesListBootstrap: packagesListBootstrap 
		packagesListFull: packagesListFull
		pharoBootstraper: PBBootstrapCandle for32Bits