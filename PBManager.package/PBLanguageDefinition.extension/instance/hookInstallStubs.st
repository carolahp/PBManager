*PBManager
hookInstallStubs
	self allClassesWithRole do: [ :each |
		each installStub ]