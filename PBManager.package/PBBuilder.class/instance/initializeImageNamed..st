bootstrapping
initializeImageNamed: aString 
	self pbRepository languageName: aString.
	self pbRepository classesAreInstalled: false.
	self pbRepository methodsAreInstalled: false.
	self pbRepository processIsInstalled: false.
	
	self bootstrapper 
		prepareBootstrap;
		initializeBuilder;
		installStubs
		