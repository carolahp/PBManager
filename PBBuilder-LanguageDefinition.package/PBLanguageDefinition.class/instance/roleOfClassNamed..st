accessing
roleOfClassNamed: aString 
	^ [self classRoles keyAtValue: aString]
		on: ValueNotFound 
		do: [(self classRoles includesKey: aString)
				ifTrue: [ aString ]
				ifFalse: [ PBClassDefinitionNotFound signal: 'class "', aString, '" not found' ]]