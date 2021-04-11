running
createInitialObjects
	
	| smalltalk characterTable rsDictionary sDictionary |
	"We add the main globals  in the bootstrap environment before a system dictionary exists. These globals are needed to create a system dictionary, and will be used by the AST interpreter"
	self bootstrapEnvironment at: #Processor put: objectSpace nilObject.
	self bootstrapEnvironment at: #Smalltalk put: objectSpace nilObject.
	self bootstrapEnvironment at: #Undeclared put: (self bootstrapInterpreter evaluateCode: 'theDictionary new' withTemps: { 'theDictionary' -> (self classWithRole: #Dictionary) mirror }).
	
	classLoader initializeClassPools.
	
	rsDictionary := self bootstrapInterpreter
		evaluateCode: 'dictionaryClass withAll: aClassNamesCollection'
		withTemps: {
			'dictionaryClass' ->
			(self classWithRole: #SystemDictionary) mirror . 
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
	
	smalltalk := self bootstrapInterpreter evaluateCode: 'Smalltalk := theSmalltalk new instVarAt: 1 put: aSystemDictionary ; yourself.'
		withTemps: {
			'theSmalltalk' -> (self classWithRole: #Smalltalk) mirror.
			'aSystemDictionary' -> rsDictionary }.
	self bootstrapEnvironment at: #Smalltalk put: smalltalk.
	self bootstrapInterpreter evaluateCode: 'Smalltalk globals at: #Smalltalk put: Smalltalk'.
	espellBackend systemDictionary: (smalltalk instanceVariableAtIndex: 1).
	
	
"	self bootstrapInterpreter evaluateCode: 'theString initialize.' withTemps: { 'theString' -> (self classWithRole: #ByteString) mirror }."
	self bootstrapInterpreter evaluateCode: 'theFloat initialize.' withTemps: { 'theFloat' -> (self classWithRole: #Float) mirror }.
	
	self checkpoint: 'created_initial_objects'.
