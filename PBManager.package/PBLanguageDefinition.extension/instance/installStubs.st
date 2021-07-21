*PBManager
installStubs
	self allClassesWithRole do: [ :each |
		each installStub ]