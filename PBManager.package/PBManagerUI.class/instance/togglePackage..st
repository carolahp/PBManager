initialization
togglePackage: aString
	packages at: aString put: ((packages at: aString) not).
	self updatePackagesLists