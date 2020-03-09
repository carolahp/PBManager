accessing
classNamed: aString 
	^ ([self classWithRole: aString] on: Error do: [nil]) 
		ifNil: [ [super classNamed: aString] on: Error do: [ nil ]  ] 
		ifNotNil: [ :class | class ]