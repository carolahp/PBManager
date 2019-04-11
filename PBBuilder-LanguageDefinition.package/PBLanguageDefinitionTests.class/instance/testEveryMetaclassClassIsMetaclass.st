metamodel
testEveryMetaclassClassIsMetaclass

	| results metaclass |
	" We get all the metacclasses except 'Metaclass' "
	metaclass := language classWithRole: #Metaclass.
	results := language allClasses reject: [ :c | c == metaclass or: [ c isMetaclass not ] ].
	" Get the metaclass for each metaclass "
	results := results collect: [ :c | c metaclass ].
	self assert: results isNotEmpty.
	" Check that the metaclass of every metaclass is Metaclass "
	self assert: ((results collect: [ :c | c == metaclass ]) inject: true into: [:a :b | a or: [b]])
	