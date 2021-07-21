*PBBuilder-LanguageDefinition
addInstVarIfPossible: aString 
	"it adds an instance variable in the selected behavior only if no VM requirement is violated by doing this. 
	When it is not possible to add the inst var in this behavior, it goes down in the inheritance hierarchy and installs the IV in the behaviors in which it is possible. "
	self flag: 'move this method to a class maybe, that knows how to refactor rgbehaviors and their inheritance hierarchies'
	self markFeasibilityOfAddingInstVar.
	self addInstVarDependingOnFeasibility: aString
	