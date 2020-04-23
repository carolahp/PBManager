*PBBuilder-LanguageDefinition
addInstVarIfPossible: aString 
	self markFeasibilityOfAddingInstVar.
	self addInstVarDependingOnFeasibility: aString
	