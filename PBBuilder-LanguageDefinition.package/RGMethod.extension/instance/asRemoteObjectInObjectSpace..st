*PBBuilder-LanguageDefinition
asRemoteObjectInObjectSpace: anEPObjectSpace 
	^ anEPObjectSpace 
		newMessageWithSelector: (self selector asLiteralInObjectSpace: anEPObjectSpace) 
		arguments: (anEPObjectSpace arrayWithAll: (self argumentNames collect: [:arg | arg asLiteralInObjectSpace: anEPObjectSpace])) 
		andLookupClass: (anEPObjectSpace classNamed: self parent name)