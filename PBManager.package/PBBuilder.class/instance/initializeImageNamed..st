bootstrapping
initializeImageNamed: aString 
	self pbRepository languageName: aString.
	self bootstrapper 
		prepareBootstrap;
		initializeBuilder;
		installStubs
		