accessing
cleanSuperclassesOfMetaclasses

	"fix suprclasses of metaclasses do not pointing to metaclasses of superclasses"
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclass and: [ each superclass isRingResolved not ])
			ifTrue: [ | rootMetaclassSuperclass |
				rootMetaclassSuperclass := each baseClass superclass
					ifNil: [ self classClass ]
					ifNotNil: [ each baseClass superclass metaclass ].
				each superclass: rootMetaclassSuperclass ] ].
