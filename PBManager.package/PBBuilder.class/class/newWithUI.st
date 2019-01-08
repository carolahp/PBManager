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
					;bootstrapBlock: [ :packages | [ PBCustomPackagesBootstrap for32Bits
															bootstrapWithEnvironment: pbRepo ringEnvironmentForBootstrap ] on: Warning do:  [ :e | e resume ] ] .
	^ self new 
		pbRepository: pbRepo;
		pbBuilderUI: pbUI