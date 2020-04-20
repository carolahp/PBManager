objectsInitializations
instructionNewSystemDictionary
	^ self newInstruction 
		code: 
		'PCSmalltalk new 
			instVarAt: 1 
			put: aCollectionOfClasses asDictionary; yourself.';
		temps: {'aCollectionOfClasses' -> self bootstrapEnvironment associations}