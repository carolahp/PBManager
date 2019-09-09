baselines
baseline: spec
	<baseline>
	spec for: #common do: [
		"spec baseline: 'PharoBootstrapProcess'."
		spec 
			package: 'PBManager';
			package: 'PBBuilder-LanguageDefinition' with: [spec repository: 'https://github.com/pharo-vcs/tonel:v1.0.11'].
	]
