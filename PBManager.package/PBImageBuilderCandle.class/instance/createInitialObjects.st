running
createInitialObjects
	
	| smalltalk characterTable rsDictionary sDictionary |
	"We add the main globals  in the bootstrap environment before a system dictionary exists. These globals are needed to create a system dictionary, and will be used by the AST interpreter"
	self bootstrapEnvironment at: #Processor put: objectSpace nilObject.
	
	classLoader initializeClassPools.
	
	"sDictionary := self bootstrapInterpreter
		evaluateCode: 'aClassNamesCollection asDictionary'
		withTemps: { 
			'aClassNamesCollection' -> (self objectSpace newArrayWithAll: (self bootstrapEnvironment))
		}.
	rsDictionary := EPRemoteDictionary on: sDictionary.
	bootstrapEnvironment associationsDo: [ :assoc |
		rsDictionary at: assoc key put: assoc value ].
	
	
	smalltalk := self bootstrapInterpreter evaluateCode: 'PCSmalltalk new instVarAt: 1 put: aSystemDictionary ; yourself.'
	withTemps: { 'aSystemDictionary' -> sDictionary }.
	self bootstrapEnvironment 
		at: #Smalltalk 
		put: smalltalk.
	
	
	espellBackend systemDictionary: (smalltalk instanceVariableAtIndex: 1).
	
	"
	
	self bootstrapInterpreter evaluateCode: 'PCString initialize.'.
	
	self checkpoint: 'created_initial_objects'.
