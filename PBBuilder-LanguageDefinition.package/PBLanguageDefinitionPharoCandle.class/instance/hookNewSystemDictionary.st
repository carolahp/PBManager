hooks
hookNewSystemDictionary
	^ self newInstruction 
		code: '| systemDict smalltalk |
			smalltalk := PCSystem new.
			systemDict := PCDictionary new.
			smalltalk globals: systemDict.
			systemDict at: #Smalltalk put: smalltalk.
			systemDict at: #Processor put: nil.
			^ systemDict'