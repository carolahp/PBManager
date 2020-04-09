stubs
isCompiledMethod: aClass
	^ aClass = (self systemDefinition classWithRole: #CompiledMethod)