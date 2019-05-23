binding
classForClassMirror: anEPClassMirror 
	
	^ mirrorDefinitionMap at: anEPClassMirror ifAbsent: [ systemDefinition classWithRole: #Class ]