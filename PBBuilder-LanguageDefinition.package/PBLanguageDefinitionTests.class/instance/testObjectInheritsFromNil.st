tests
testObjectInheritsFromNil
	| results |
	" We assume that the only class that inherits from nil is Object "
	results := language allClasses select: [ :c | c superclass isNil ].
	self assert: results size equals: 1