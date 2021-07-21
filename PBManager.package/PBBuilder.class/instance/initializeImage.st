bootstrapping
initializeImage 
	self resetTags.
	self checkpoint:Character cr asString,
		'--------------------------------', Character cr asString, 
		'  Bootstrapping ', pbRepository languageName ,  Character cr asString, 
		'--------------------------------', Character cr asString.
	self initializeBootstrapper.
	self createVMStubs.
	self createInitialObjects.