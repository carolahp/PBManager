baselines
baseline: spec
	<baseline>
	spec for: #common do: [
		"spec baseline: 'PharoBootstrapProcess'."
		spec baseline: 'PBManager'
			with: [spec 
						repository: 'https://github.com/pharo-vcs/tonel:v1.0.11';
						repository: 'https://github.com/carolahp/Ring2/src:BootstrapPharoCandleWithEspell'
						].
		
		spec 
			package: 'PBBuilder-LanguageDefinition';
			package: 'PBManager' 
				with: [ spec requires: #('PBBuilder-LanguageDefinition') ];
			package: 'PBBuilder-LanguageVisualization' 
				with: [ spec requires: #('PBBuilder-LanguageDefinition') ]
	]
