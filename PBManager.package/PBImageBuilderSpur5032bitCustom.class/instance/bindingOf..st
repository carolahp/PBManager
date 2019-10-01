accessing
bindingOf: aName

	((self systemDefinition classNamed: aName) isNotNil)
		ifTrue: [ ^ EPClassBinding new
				name: aName objectSpace: self;
				yourself ].
	((self systemDefinition globalVariableNamed: aName) isNotNil)
		ifTrue: [ ^ EPGlobalBinding new
				name: aName objectSpace: self;
				yourself ].