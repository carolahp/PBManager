instantiation
newWithUICandleInDirectory: aFileReference
	| path packagesListBootstrap packagesListFull |
	self deprecated: 'initialize from PBBuilderUI instead'.
	path := aFileReference .
	packagesListBootstrap := nil .
	packagesListFull := nil .
	^ self newWithUISrcPath: path 
		packagesListBootstrap: packagesListBootstrap 
		packagesListFull: packagesListFull
		pharoBootstraper: PBBootstrapCandle for32Bits