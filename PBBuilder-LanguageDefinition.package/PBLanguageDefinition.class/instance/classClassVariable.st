accessing-specialClasses
classClassVariable
	
	^ [ self classWithRole: #ClassVariable ] on: PBClassDefinitionNotFound 
			do: [ self classWithRole: #Association ]