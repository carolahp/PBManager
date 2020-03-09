accessing
bootstrapInstallClasses: boolInstallClasses installMethods: boolInstallMethods installProcess: boolInstallProcess
	self 
		initializeBootstrapEnvironment;
		createVMStubs;
		flushNewSpace;
		createInitialObjects.
		
	boolInstallClasses ifFalse: [ ^ self ].
	self 
		createClasses.
	
	boolInstallMethods ifFalse: [ ^ self ]. 
	self  
		installMethods;
		installExtensionMethods.
		
	boolInstallProcess ifFalse: [ ^self ].
	self 
		initializeImage