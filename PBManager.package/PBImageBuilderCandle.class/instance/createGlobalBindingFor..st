running
createGlobalBindingFor: anEPGlobalBinding 

	^ bootstrappedBindingCache
		at: anEPGlobalBinding name
		ifAbsentPut: [ 
			| association |
			association := self newAssociation.
			association instanceVariableAtIndex: 1 put: (anEPGlobalBinding name asLiteralInObjectSpace: self objectSpace).
			association instanceVariableAtIndex: 2 put: (self valueForGlobal: anEPGlobalBinding name).
			association ]