initializing
initialize
	
	systemDefinition := self imageBuilder systemDefinition fullCopy.
	systemDefinition removeBehavior: (systemDefinition classNamed: #PCPoint).
	size := 0.
	generationTime := DateAndTime now.
	self imageBuilder systemDefinition: systemDefinition
	