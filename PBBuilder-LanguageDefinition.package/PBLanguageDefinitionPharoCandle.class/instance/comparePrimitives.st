cleaning
comparePrimitives
	| methods |
	methods := ((self ask behaviors gather: [ :beh | beh methodDict ])
		select: [ :meth | meth ast isPrimitive ])
		collect: [ :meth | |sysMeth pcClassName|
			pcClassName := meth methodClass name asString.
			pcClassName := (pcClassName copyAfter: $P) copyAfter: $C.
			pcClassName = 'MethodContext' ifTrue: [ pcClassName := 'Context' ].
			pcClassName = 'Block' ifTrue: [ pcClassName := 'BlockClosure' ].
			pcClassName = 'System class' ifTrue: [ pcClassName := 'SmalltalkImage' ].
			sysMeth := (Smalltalk classNamed: pcClassName) methodDictionary at: meth selector asSymbol ifAbsent: [ nil ].
			{ meth ast . sysMeth } ].
		^ methods select: [ :array | (array at:2) isNotNil and: [ ((array at:1) primitive = (array at:2) primitive) not ] ]