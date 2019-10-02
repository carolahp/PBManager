*PBBuilder-LanguageDefinition
asMCDefinition
	^ MCTraitDefinition 
		name: self owner name
		traitComposition: self owner traitCompositionString 
		category:  self owner category 
		instVarNames:  self instVarNames
		comment:  self owner comment content
		commentStamp: self owner comment stamp