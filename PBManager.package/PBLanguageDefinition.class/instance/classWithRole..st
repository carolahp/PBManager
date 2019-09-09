accessing
classWithRole: aString 
	^ self classNamed: (self classRoles at: aString)