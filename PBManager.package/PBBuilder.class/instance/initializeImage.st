bootstrapping
initializeImage 
	self pbRepository classesAreInstalled: false.
	self pbRepository methodsAreInstalled: false.
	self pbRepository processIsInstalled: false.
	
	self checkpoint:Character cr asString,
		'--------------------------------', Character cr asString, 
		'  Bootstrapping ', pbRepository languageName ,  Character cr asString, 
		'--------------------------------', Character cr asString.
	self bootstrapper 
		prepareBootstrap;
		initializeBuilder.
	self bootstrapper 	builder initializeBootstrapEnvironment.
	self checkpoint: 'bootstrap environment initialized'.
	self bootstrapper 	builder createVMStubs.
	self checkpoint: 'vm stubs created'.
	self bootstrapper 	builder flushNewSpace.
	self bootstrapper 	builder createInitialObjects.
	self checkpoint: 'initial objects created'