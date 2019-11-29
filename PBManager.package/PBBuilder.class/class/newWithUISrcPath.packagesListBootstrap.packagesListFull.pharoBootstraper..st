example methods
newWithUISrcPath: aPath packagesListBootstrap: aPackagesListBootstrap packagesListFull: aPackagesListFull pharoBootstraper: pharoBootstraper
	| path packagesListBootstrap packagesListFull pbRepo pbUI pbBManual |
	"root directory in which the Tonel repositories must be contained"
	path := aPath.
	self assert: path asFileReference exists description: 'Repository path does not exist: ''', path, ''''.
	
	packagesListBootstrap := aPackagesListBootstrap.
	packagesListFull := aPackagesListFull.
	
	"instance of PBBootstrap to generate the image"
	pbBManual := pharoBootstraper.

	pbRepo := PBRepository new 
					repositoryPath: path;
					packagesDefaultListBootstrap: packagesListBootstrap;
					packagesDefaultListFull: packagesListFull;
					checkDependecies: true "set as true only to generate the default ring environment";
					yourself.
	
	pbUI := PBBuilderUI basicNew 
					pbmRepository: pbRepo;
					blockBootstrap: [ 
						[ pbBManual
								environment: ( pbRepo ringEnvironmentForBootstrapWithLanguageDefinition: pbBManual languageDefinitionClass );
								pbRepository: pbRepo;
								setDefaultOptions;
								bootstrap  
						] on: Warning do:  [ :e | e resume ] ];
					blockShowSourceCode: [
					 	(pbRepo ringEnvironmentForBootstrapWithLanguageDefinition: pbBManual languageDefinitionClass)
											tonelFileReference: path asFileReference; browse 
						 ];
					blockInspectImage: [ :imagePath | (SpurImage onFile: imagePath) inspect ];
					blockExecInGenImage: [:code | [ (PBHybridDebugger withCode: code interpreter: pbBManual builder debuggerInterpreter interpreter) openWithSpec ] on: Error do: [ self error: 'You must bootstrap a new image first!' ] ];
					blockEvalInGenImage: [ :code |  (pbBManual builder debuggerInterpreter evaluateCode: code) inspect ];
					blockWriteGenImage: [ pbBManual builder writeImage ];
					initialize .
	^ self new
		pbBootstrapManual: pbBManual;
		pbRepository: pbRepo;
		pbBuilderUI: pbUI;
		yourself