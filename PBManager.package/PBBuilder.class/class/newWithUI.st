example methods
newWithUI
	| path showUI packagesListBootstrap packagesListFull |
	path := (Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY'),'/src'.
	showUI := true.
	packagesListBootstrap := nil ."PBBuilder kernelGroup."
	packagesListFull := PBBuilder kernelGroup.
	
	^ self new pbRepository: (PBRepository new 
										repositoryPath: path ;
										packagesListBS: packagesListBootstrap ;
										packagesListFull: packagesListFull;
										showUI: showUI ).