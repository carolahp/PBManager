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
					;checkDependecies: true "set as true only to generate the default ring environment"
					;yourself.
	pbUI := PBBuilderUI basicNew 
					pbmRepository: pbRepo
					;blockBootstrap: [ 
						[ pbBManual
								environment: ( pbRepo ringEnvironmentForBootstrapWithLanguageDefinition: pbBManual languageDefinitionClass );
								setDefaultOptions;
								bootstrap  
						] on: Warning do:  [ :e | e resume ] ]
					;blockShowSourceCode: [
					 	(pbRepo ringEnvironmentForBootstrapWithLanguageDefinition: pbBManual languageDefinitionClass)
											tonelFileReference: path asFileReference; browse 
						 ]
					;blockInspectImage: [ :imagePath | (SpurImage onFile: imagePath) inspect ]
					;blockExecInGenImage: [ [pbBManual builder espellBackend "bootstrapedImageInMemory "inspect] on: Error do: [ self error: 'You must bootstrap a new image first!' ] ]
					;initialize .
	^ self new
		pbBootstrapManual: pbBManual;
		pbRepository: pbRepo;
		pbBuilderUI: pbUI;
		yourself