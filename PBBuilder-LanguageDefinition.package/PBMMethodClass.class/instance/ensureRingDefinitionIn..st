metamodel;
ensureRingDefinitionIn: anRGEnvironment 
	
	^ anRGEnvironment backend definitionFor: mcDef ifAbsentRegister: [
		| def classDef metaclassDef myParent protocol |
		classDef := anRGEnvironment ensureClassNamed: mcDef className asSymbol.
		
		classDef isTrait 
			ifFalse: [ 
				metaclassDef := anRGEnvironment ensureClassNamed: (mcDef className, ' class') asSymbol.
				classDef metaclass: metaclassDef.
				metaclassDef baseClass: classDef.]
			ifTrue: [ 
				metaclassDef := anRGEnvironment ensureMetaclassTraitNamed: (mcDef className, ' classTrait') asSymbol.
				classDef classTrait: metaclassDef.
				metaclassDef baseTrait. classDef.].
				
		myParent := mcDef classIsMeta 
			ifFalse: [ classDef ]
			ifTrue: [ metaclassDef ].
		
		def := RGMethod named: mcDef selector parent: myParent.
		myParent addLocalMethod: def.
			
		def sourceCode: mcDef source.
		def author: (mcDef authorForStamp: mcDef timeStamp).
		def time: (mcDef timeForStamp: mcDef timeStamp).
		
		protocol := myParent ensureProtocolNamed: mcDef category asSymbol.
		myParent addProtocol: protocol.
		def protocol: protocol.
		def 
	]