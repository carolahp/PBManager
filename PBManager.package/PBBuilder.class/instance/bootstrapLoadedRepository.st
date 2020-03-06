repository-functions
bootstrapLoadedRepository
	
	[ self pbRepository pbBootstrapper bootstrap ] on: Warning do: [:e | e resume ].
	self announceImageGenerated.
	self bootstrappedImages add: (self bootstrappedImages size -> self pbRepository pbBootstrapper builder)