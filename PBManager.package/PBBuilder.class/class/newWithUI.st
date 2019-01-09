example methods
newWithUI
	| path packagesListBootstrap packagesListFull pbRepo pbUI |
	path := (Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY'),'/src'.
	packagesListBootstrap := nil ."PBBuilder kernelGroup."
	packagesListFull := PBBuilder AllPackagesForHermes.
	
	pbRepo := PBRepository new 
					repositoryPath: path
					;packagesDefaultListBootstrap: packagesListBootstrap
					;packagesDefaultListFull: packagesListFull
					";checkDependecies: true"
					.
	pbUI := PBBuilderUI new 
					pbmRepository: pbRepo
					;blockBootstrap: [ 
						[ PBBootstrapManual for32Bits
								environment: pbRepo ringEnvironmentForBootstrap;
								bootstrap  
						] on: Warning do:  [ :e | e resume ] ]
					;blockShowSourceCode: [
					 	pbRepo ringEnvironmentForBootstrap browse 
						 ] .
	^ self new 
		pbRepository: pbRepo;
		pbBuilderUI: pbUI