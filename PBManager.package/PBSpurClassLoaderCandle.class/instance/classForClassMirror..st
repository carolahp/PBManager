binding
classForClassMirror: anEPClassMirror 
	
	^ mirrorDefinitionMap at: anEPClassMirror ifAbsent: [ self systemDefinition classWithRole: #Class ]