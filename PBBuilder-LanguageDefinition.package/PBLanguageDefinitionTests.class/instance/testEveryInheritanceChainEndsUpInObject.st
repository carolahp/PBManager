tests
testEveryInheritanceChainEndsUpInObject

	| results first |
	" We get all the classes that do not inherit from nil "
	results := language allClasses select: [ :c | c superclass isNotNil ].
	" For each class follow its inheritance chain until we get to the root. 
	  The root is the chass that inherits from nil "
	results := results collect: [ :c | c finalSuperclass ].
	self assert: results isNotEmpty.
	first := results at:1.
	" We check that the root of every inheritance chain is the same object "
	self assert: ((results collect: [ :c | c == first ]) inject: true into: [:a :b | a or: [b]])
	