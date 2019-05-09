running
createInitialObjects
	
	| smalltalk characterTable |
	"We add the main globals  in the bootstrap environment before a system dictionary exists. These globals are needed to create a system dictionary, and will be used by the AST interpreter"
	self bootstrapEnvironment at: #Processor put: objectSpace nilObject.
	"smalltalk := self bootstrapInterpreter evaluateCode: 'PCSmalltalk new instVarAt: 1 put: (PCDictionary new); yourself.'.
	self bootstrapEnvironment 
		at: #Smalltalk 
		put: smalltalk."
	classLoader initializeClassPools.
	self bootstrapInterpreter evaluateCode: 'PCString initialize.'.
	
	self checkpoint: 'created_initial_objects'.
