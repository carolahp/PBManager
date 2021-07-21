accessing-specialClasses
classSystemDictionary
	^ [ self classWithRole: #SystemDictionary ] on: PBClassDefinitionNotFound 
			do: [ self classWithRole: #Dictionary ]