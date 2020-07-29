hooks
hookSetSpecialObjectsArray: anEP2RemoteArray 
	
	^ self newInstruction 
		code: 'Smalltalk specialObjectsArray: anArray';
		temps: { 'anArray' -> anEP2RemoteArray };
		yourself
	