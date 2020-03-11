accessing
classWithRole: aString 
	
	^ (super classNamed: (self classRoles at: aString ifAbsent: [ aString ])) 
		ifNil: [ self error: 'class ', aString, ' not found'  ]