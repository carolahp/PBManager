hooks
hookInitializeClassStubs
	self allClassesWithRole
		do: [ :beh | beh initializeStub ]