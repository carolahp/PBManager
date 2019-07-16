accessing
bindingOf: aName

	(self includesClassNamed: aName)
		ifTrue: [ ^ "(objectSpace classNamed: aName) mirror asClassMirror" 
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