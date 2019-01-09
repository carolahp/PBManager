example methods
newWithUI
	| path packagesListBootstrap packagesListFull pbRepo pbUI pbBManual |
	path := (Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY'),'/src'.
	packagesListBootstrap := nil ."PBBuilder kernelGroup."
	packagesListFull := PBBuilder AllPackagesForHermes.
	pbBManual := PBBootstrapManual for32Bits.
	pbRepo := PBRepository new 
					repositoryPath: path
					;packagesDefaultListBootstrap: packagesListBootstrap
					;packagesDefaultListFull: packagesListFull
					";checkDependecies: true"
					.
	pbUI := PBBuilderUI new 
					pbmRepository: pbRepo
					;blockBootstrap: [ 
						[ pbBManual
								environment: pbRepo ringEnvironmentForBootstrap;
								setDefaultOptions;
								bootstrap  
						] on: Warning do:  [ :e | e resume ] ]
					;blockShowSourceCode: [
					 	pbRepo ringEnvironmentForBootstrap browse 
						 ]
					;blockInspectImage: [ 
						pbBManual bootstrapedImageInMemory inspect
						 ] .
	^ self new 
		pbBootstrapManual: pbBManual;
		pbRepository: pbRepo;
		pbBuilderUI: pbUI