running
createInitialObjects
	
	| characterTable |
	"We add the main globals  in the bootstrap environment before a system dictionary exists. These globals are needed to create a system dictionary, and will be used by the AST interpreter"
	self bootstrapEnvironment at: #Processor put: objectSpace nilObject.
	classLoader initializeClassPools.
	self bootstrapInterpreter evaluateCode: 'PCString initialize.'.
	self checkpoint: 'created_initial_objects'.