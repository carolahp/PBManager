accessing
classWithRole: aString 
	^ (self classNamed: (self classRoles at: aString)) 
		ifNil: [ self error: 'class ', aString, ' not found'  ]