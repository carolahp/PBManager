initializing
initialize
	
	systemDefinition := self imageBuilder systemDefinition fullCopy.
	systemDefinition removeBehavior: (systemDefinition classNamed: #PCPoint).
	size := 100000.
	generationTime := DateAndTime now.
	self imageBuilder systemDefinition: systemDefinition
	