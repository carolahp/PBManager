instance creation
fromMetamodelClass: aClass named: aString 
	^ self new 
		languageDefinitionClass: aClass;
		languageName: aString;
		yourself.