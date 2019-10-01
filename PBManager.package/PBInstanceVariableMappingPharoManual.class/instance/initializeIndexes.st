initialization
initializeIndexes
	super initializeIndexes .
	metaclassThisClassIndex := self lookup: #thisClass in: #Metaclass.