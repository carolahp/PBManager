accessing
lastSuperclass 
	self superclass 
		ifNil: [ ^ nil ]
		ifNotNil: [ | mySuperclass | 
			mySuperclass := self superclass.
			mySuperclass superclass 
				ifNil:[ ^ mySuperclass ]
				ifNotNil: [ ^ mySuperclass lastSuperclass ] ]