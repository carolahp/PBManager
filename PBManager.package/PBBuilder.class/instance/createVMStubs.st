bootstrapping
createVMStubs 
	self bootstrapper 	builder createVMStubs.
	self announce: PBVMStubsCreatedAnnouncement new.
	self checkpoint: 'VM stubs created'.