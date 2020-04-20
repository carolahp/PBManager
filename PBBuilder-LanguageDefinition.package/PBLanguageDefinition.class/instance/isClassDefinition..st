testing
isClassDefinition: aString 
	| classDefCode |
	classDefCode := (self instructionInstallClass: (self classWithRole: #UndefinedObject)) code.
	^ aString beginsWith: (classDefCode truncateTo: 50)