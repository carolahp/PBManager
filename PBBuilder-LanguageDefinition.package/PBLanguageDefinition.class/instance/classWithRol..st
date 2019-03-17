accessing
classWithRol: aString 
	^ self classNamed: (self classRoles at: aString)