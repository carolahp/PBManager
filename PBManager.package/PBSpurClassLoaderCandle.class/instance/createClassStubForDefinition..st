stubs
createClassStubForDefinition: aClassDefinition
	
	| class metaclass |	
	metaclass := self metaclassClass basicNew asClassMirror.
	metaclass format: (self formatOfClass: aClassDefinition classSide).
	
	class := metaclass basicNew asClassMirror.
	class format: (self formatOfClass: aClassDefinition).
	
	metaclass instanceVariableAtIndex: 4 put: class. "soleInstance" 
	
	^ class