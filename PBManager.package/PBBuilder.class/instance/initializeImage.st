bootstrapping
initializeImage 
	self pbRepository classesAreInstalled: false.
	self pbRepository methodsAreInstalled: false.
	self pbRepository processIsInstalled: false.
	^ self bootstrapper 
		prepareBootstrap;
		initializeBuilder;
		installStubs
		