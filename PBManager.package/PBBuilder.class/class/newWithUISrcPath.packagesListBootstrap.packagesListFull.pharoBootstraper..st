example methods
newWithUISrcPath: aPath packagesListBootstrap: aPackagesListBootstrap packagesListFull: aPackagesListFull pharoBootstraper: pharoBootstraper
	| path packagesListBootstrap packagesListFull pbRepo pbUI pbBManual |
	path := aPath.
	self assert: path asFileReference exists description: 'Repository path does not exist: ''', path, ''''.
	packagesListBootstrap := aPackagesListBootstrap  ."PBBuilder kernelGroup."
	packagesListFull := aPackagesListFull .
	pbBManual := pharoBootstraper.
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
								environment: ( pbRepo ringEnvironmentForBootstrapWithLanguageDefinition: pbBManual languageDefinitionClass );
								setDefaultOptions;
								bootstrap  
						] on: Warning do:  [ :e | e resume ] ]
					;blockShowSourceCode: [
					 	(pbRepo ringEnvironmentForBootstrapWithLanguageDefinition: pbBManual languageDefinitionClass) browse 
						 ]
					;blockInspectImage: [ 
						pbBManual bootstrapedImageInMemory inspect
						 ] .
	^ self new 
		pbBootstrapManual: pbBManual;
		pbRepository: pbRepo;
		pbBuilderUI: pbUI