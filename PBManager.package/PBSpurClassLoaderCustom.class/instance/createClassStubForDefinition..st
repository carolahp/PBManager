as yet unclassified
createClassStubForDefinition: aClassDefinition
	
	| class metaclass |	
	metaclass := self metaclassClass basicNew asClassMirror.
	metaclass format: (self formatOfClass: aClassDefinition classSide).
	
	class := metaclass basicNew asClassMirror.
	class format: (self formatOfClass: aClassDefinition).
	
	metaclass instanceVariableAtIndex: builder objectSpace backend instanceVariableMapping metaclassThisClassIndex put: class. "soleInstance of the metaclass" 
	
	^ class