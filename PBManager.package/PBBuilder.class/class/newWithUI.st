example methods
newWithUI
	| path packagesListBootstrap packagesListFull pbRepo pbUI pbBManual basePath |
	basePath := Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY' ifAbsent: ['../../..'].
	path := basePath,'/src'.
	packagesListBootstrap := nil ."PBBuilder kernelGroup."
	packagesListFull := PBBuilder AllPackagesForHermes, PBBuilder TestsForBootstrap .
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