accessing-specialClasses
classByteSymbol
	^ [ self classWithRole: #ByteSymbol ] on: PBClassDefinitionNotFound 
			do: [ self classWithRole: #Symbol ].