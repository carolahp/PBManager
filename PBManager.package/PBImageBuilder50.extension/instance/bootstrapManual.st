*PBManager
bootstrapManual 
	self
		initializeBootstrapEnvironment;
		createVMStubs;
		flushNewSpace;
		createInitialObjects;
		createClasses;
		installMethods;
		installExtensionMethods;
		initializeImageManualDoing: '1+2'
		"writeImage"