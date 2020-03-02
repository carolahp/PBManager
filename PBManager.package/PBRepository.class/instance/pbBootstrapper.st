accessing
pbBootstrapper
	^ self ringEnvironment pbBootstrapper 
		environment: self ringEnvironment; 
		pbRepository: self; 
		yourself