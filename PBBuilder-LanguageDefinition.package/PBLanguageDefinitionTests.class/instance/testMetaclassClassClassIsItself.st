metamodel
testMetaclassClassClassIsItself

	| metaclass |
	" We get all the metacclasses except 'Metaclass' "
	metaclass := language classWithRole: #'Metaclass'.
	" Check that the metaclass of every metaclass is Metaclass "
	self assert: metaclass metaclass metaclass equals: metaclass
	