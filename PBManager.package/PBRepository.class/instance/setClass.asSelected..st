toggling
setClass: aString asSelected: aBoolean
	"replacing the original version that assumes the language definition includes metaclasses" 
	"| ringClass ringClass2 |
	ringClass := ringEnvironment classNamed: aString.
	(ringClass isMetaclass) 
		ifTrue: [ ringClass2 := ringClass uniqueInstance ] 
		ifFalse: [ ringClass2 := ringClass metaclass ]. 
	self halt.
	ringClass propertyNamed: #selected put: aBoolean.
	ringClass2 propertyNamed: #selected put: aBoolean."
	| ringClass |
	ringClass := ringEnvironment classNamed: aString.
	ringClass propertyNamed: #selected put: aBoolean.
	self classes at: aString put: aBoolean