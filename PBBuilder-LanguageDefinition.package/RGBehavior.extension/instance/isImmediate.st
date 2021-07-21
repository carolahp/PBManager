*PBBuilder-LanguageDefinition
isImmediate
	^ self parent immediateClassRoles contains: [:role | role = self role ]