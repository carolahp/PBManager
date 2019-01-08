example methods
newWithUI
	| path packagesListBootstrap packagesListFull pbRepo pbUI |
	path := (Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY'),'/src'.
	packagesListBootstrap := nil ."PBBuilder kernelGroup."
	packagesListFull := PBBuilder kernelGroup.
	
	pbRepo := PBRepository new 
							repositoryPath: path ;
							packagesListBootstrap: packagesListBootstrap ;
							packagesListFull: packagesListFull.
	pbUI := PBBuilderUI withRepository: pbRepo.
	^ self new 
		pbRepository: pbRepo;
		pbBuilderUI: pbUI