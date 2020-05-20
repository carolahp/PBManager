testing
isClassDefinition: aString 
	| classDefCode |
	classDefCode := (self hookInstallClass: (self classWithRole: #UndefinedObject)) code.
	^ aString beginsWith: (classDefCode truncateTo: 50)