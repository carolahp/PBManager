tests
testEveryClassRolHasAClassLoaded
	| roles classes |
	" Get the name of the class for each rol "
	roles := language classRoles values .
	" Get the loaded class for each class name found "
	classes := roles collect: [ :class | language classNamed: class ].
	" Check that all the classes were found "
	self assert: (classes select: [ :c | c isNil ]) isEmpty