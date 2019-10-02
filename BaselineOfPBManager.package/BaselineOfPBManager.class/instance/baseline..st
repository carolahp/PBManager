baselines
baseline: spec
	<baseline>
	spec for: #common do: [
		"spec baseline: 'PharoBootstrapProcess'."
		
		"Dependencies"
		spec baseline: 'Ring2'
			with: [ spec loads: #calypso; repository: 'github://pavel-krivanek/Ring2/src']."waiting for PR integration in pavel-krivanek repo"
		
		spec baseline: 'Tonel'
			with: [spec 	repository: 'github://pharo-vcs/tonel:v1.0.11' ].
 
		spec baseline: 'DebuggableASTInterpreter'
			with: [spec loads: #Debugger; 	repository: 'github://carolahp/DebuggableASTInterpreter:BootstrapPharoCandleWithEspell' ].
		
		spec baseline: 'SpurReader'
			with: [ spec repository: 'github://carolahp/PharoImageInspector'  ].
		
		spec baseline: 'PBHybridDebugger'
			with: [ spec repository: 'github://carolahp/PBHybridDebugger'  ].
		
		"spec baseline: 'Espell'
			with: [spec 	repository: 'github://carolahp/espell:BootstrapPharoCandleWithEspell' ]."
				
		"Packages"
		spec 
			package: 'PBBuilder-LanguageDefinition';
			package: 'PBManager' 
				with: [ spec requires: #('PBBuilder-LanguageDefinition') ];
			package: 'PBBuilder-LanguageVisualization' 
				with: [ spec requires: #('PBBuilder-LanguageDefinition') ]
	]
