toggling
setClass: aString asSelected: aBoolean 
	| ringClass ringClass2 |
	ringClass := ringEnvironment classNamed: aString.
	(ringClass isMetaclass) 
		ifTrue: [ ringClass2 := ringClass uniqueInstance ] 
		ifFalse: [ ringClass2 := ringClass metaclass ]. 
	ringClass propertyNamed: #selected put: aBoolean.
	ringClass2 propertyNamed: #selected put: aBoolean.

	self classes at: aString put: aBoolean