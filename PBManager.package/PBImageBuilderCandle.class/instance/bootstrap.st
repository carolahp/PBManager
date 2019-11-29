running
bootstrap

	self
		initializeBootstrapEnvironment;
		createVMStubs;
		flushNewSpace.
	self 
		createInitialObjects;
		createClasses;
		installMethods;
		installExtensionMethods;
		initializeImage