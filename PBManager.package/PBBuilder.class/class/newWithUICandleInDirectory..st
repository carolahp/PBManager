example methods
newWithUICandleInDirectory: aFileReference
	| path packagesListBootstrap packagesListFull |
	path := aFileReference .
	packagesListBootstrap := nil .
	packagesListFull := nil .
	^ self newWithUISrcPath: path 
		packagesListBootstrap: packagesListBootstrap 
		packagesListFull: packagesListFull
		pharoBootstraper: PBBootstrapCandle for32Bits