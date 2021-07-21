metamodel
testEveryClassClassClassIsMetaclass

	| results metaclass |
	" We get all the metacclasses except 'Metaclass' "
	metaclass := language classMetaclass.
	results := language allClasses reject: [ :c | c == metaclass or: [ c isMetaclass ] ].
	" Get the metaclass for each metaclass "
	results := results collect: [ :c | c metaclass metaclass ].
	self assert: results isNotEmpty.
	" Check that the metaclass of every metaclass is Metaclass "
	self assert: ((results collect: [ :c | c == metaclass ]) inject: true into: [:a :b | a or: [b]])
	