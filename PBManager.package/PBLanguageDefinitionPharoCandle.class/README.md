"
To solve the inconsistencies when loading the pharo candle definition, I had to modify the next method
MCClassDefinition>>ensureRingDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		(...... code ......)
		(self superclassName = #nil)
						"This is the modification!!! -> def superclass: nil"
			ifTrue: [ def superclass: nil ]
			ifFalse: [ def superclass: (anRGEnvironment ensureClassNamed: superclassName ) ].
		(....... more code .......)