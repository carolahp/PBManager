accessing
classWithRole: aString 
	
	^ super classNamed: (self classRoles at: aString ifAbsent: [ aString ])