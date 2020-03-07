repository-functions
bootstrapLoadedRepositoryNamed: aString
	self pbRepository languageName: aString.
	[ self pbRepository pbBootstrapper bootstrap ] on: Warning do: [:e | e resume ].
	self announceImageGenerated.
	