hooks
hookSetSystemDictionary: anEP2SystemDictionary 
	
	^ self newInstruction 
		code: 'Smalltalk globals: aSystemDictionary';
		temps: { 'aSystemDictionary' -> anEP2SystemDictionary };
		yourself
	