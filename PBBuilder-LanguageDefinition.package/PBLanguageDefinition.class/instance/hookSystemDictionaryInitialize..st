instructions-instantiation
hookSystemDictionaryInitialize: aSytemDictionary
	^ self newInstruction 
		code: 'Hook initializeSystemDictionary: systemDict';
		temps: { 'systemDict' -> aSytemDictionary };
		yourself