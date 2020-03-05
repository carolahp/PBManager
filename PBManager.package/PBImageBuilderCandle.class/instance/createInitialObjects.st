running
createInitialObjects
	
	| smalltalk characterTable rsDictionary sDictionary |
	"We add the main globals  in the bootstrap environment before a system dictionary exists. These globals are needed to create a system dictionary, and will be used by the AST interpreter"
	self bootstrapEnvironment at: #Processor put: objectSpace nilObject.
	self bootstrapEnvironment at: #Smalltalk put: objectSpace nilObject.
	self bootstrapEnvironment at: #Undeclared put: (self bootstrapInterpreter evaluateCode: 'PCDictionary new').
	
	classLoader initializeClassPools.
	
	rsDictionary := self bootstrapInterpreter
		evaluateCode: 'aClassNamesCollection asDictionary'
		withTemps: { 
			'aClassNamesCollection' -> 
			(self objectSpace newArrayWithAll: 
				(self bootstrapEnvironment associations collect: [ :assoc | 
					self bootstrapInterpreter
						evaluateCode: 'key -> value'
						withTemps: { 'key' -> (assoc key asLiteralInObjectSpace: self objectSpace) .
										'value' -> assoc value }]))
		}.
	"sDictionary := EPRemoteDictionary on: sDictionary.
	bootstrapEnvironment associationsDo: [ :assoc |
		rsDictionary at: assoc key put: assoc value ].
	"
	
	smalltalk := self bootstrapInterpreter evaluateCode: 'Smalltalk := PCSmalltalk new instVarAt: 1 put: aSystemDictionary ; yourself.'
		withTemps: { 'aSystemDictionary' -> rsDictionary }.
	self bootstrapEnvironment at: #Smalltalk put: smalltalk.
	self bootstrapInterpreter evaluateCode: 'Smalltalk globals at: #Smalltalk put: Smalltalk'.
	espellBackend systemDictionary: (smalltalk instanceVariableAtIndex: 1).
	
	
	self bootstrapInterpreter evaluateCode: 'PCString initialize.'.
	
	self checkpoint: 'created_initial_objects'.
