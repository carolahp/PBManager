bootstrapping
createInitialObjects
	self bootstrapper 	builder flushNewSpace.
	self bootstrapper 	builder createInitialObjects.
	self checkpoint: 'initial objects created'