*PBBuilder
allClassesWithRole
	" classes with role are installed as Stubs at the beginning of bootstrap"
	^ self allClasses
		select: [ :beh | 
			(beh isBehavior 
			and: [ beh isMetaclass not ])
			and: [ beh role isNotNil ] ]