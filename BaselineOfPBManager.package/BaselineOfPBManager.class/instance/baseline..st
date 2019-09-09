baselines
baseline: spec
	<baseline>
	spec for: #common do: [
		"spec baseline: 'PharoBootstrapProcess'."
		
		"Dependencies"
		spec baseline: 'Ring2'
			with: [ spec loads: #calypso; repository: 'github://carolahp/Ring2/src:BootstrapPharoCandleWithEspell'].
		
		spec baseline: 'Tonel'
			with: [spec 	repository: 'github://pharo-vcs/tonel:v1.0.11' ].
 
	
		"Packages"
		spec 
			package: 'PBBuilder-LanguageDefinition';
			package: 'PBManager' 
				with: [ spec requires: #('PBBuilder-LanguageDefinition') ];
			package: 'PBBuilder-LanguageVisualization' 
				with: [ spec requires: #('PBBuilder-LanguageDefinition') ]
	]
