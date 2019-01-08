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
	pbUI := PBBuilderUI new 
					pbmRepository: pbRepo;
					bootstrapBlock: [ :packages | Transcript show: packages  ] .
	^ self new 
		pbRepository: pbRepo;
		pbBuilderUI: pbUI