accessing
classByRoleOrName: aString 
	|class|
	class := (self classNamed: aString) ifNil: [ self classByRole: aString ].
	class ifNil: [ PBClassDefinitionNotFound signal ].
	^ class