*PBBuilder-LanguageDefinition
finalSuperclass 
	self superclass 
		ifNil: [ ^ nil ]
		ifNotNil: [ | mySuperclass | 
			mySuperclass := self superclass.
			mySuperclass superclass 
				ifNil:[ ^ mySuperclass ]
				ifNotNil: [ ^ mySuperclass finalSuperclass ] ]