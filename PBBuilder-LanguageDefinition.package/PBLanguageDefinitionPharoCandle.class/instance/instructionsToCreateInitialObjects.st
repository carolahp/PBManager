objectsInitializations
instructionsToCreateInitialObjects
	^ {self newGenericInstruction 
		code: 'aCollectionOfClasses asDictionary';
		temps: {'aCollectionOfClasses' -> self bootstrapEnvironment associations}}