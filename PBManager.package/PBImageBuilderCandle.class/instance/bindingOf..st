accessing
bindingOf: aName

	([ self systemDefinition classNamed: aName ] on: Error do: [ nil ]) isNotNil
		ifTrue: [ ^ "(objectSpace classNamed: aName) mirror asClassMirror" 
			EPClassBinding new
				name: aName objectSpace: self;
				yourself ].
	(((self systemDefinition globalVariableNamed: aName) isNotNil) or: [(bootstrapEnvironment at: aName ifAbsent: [nil]) isNotNil])
		ifTrue: [ ^
			EPGlobalBinding new
				name: aName objectSpace: self;
				yourself ].
	self bootstrapEnvironment do: [:class | |rgClass|
		class isClassMirror ifTrue: [ 
			rgClass := class asClassMirror asRGClass.
			(rgClass classVarNames contains: [:cn | cn = aName])
				ifTrue: [|index|
					index := rgClass classVarNames indexOf: aName.
					^ EPClassVariableBinding new
						name: aName
						ownerName: rgClass theNonMetaClass name asSymbol
						objectSpace: self;
						yourself ]
			 ]
		].
			
	^ nil