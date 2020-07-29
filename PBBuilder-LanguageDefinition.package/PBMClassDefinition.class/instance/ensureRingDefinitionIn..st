metamodel
ensureRingDefinitionIn: anRGEnvironment
	
	^ anRGEnvironment backend definitionFor: mcDef ifAbsentRegister: [
		| def metaclassDef |
		def := anRGEnvironment ensureClassNamed: mcDef className asSymbol.
		metaclassDef := anRGEnvironment ensureClassNamed: (mcDef className, ' class') asSymbol.
		def metaclass: metaclassDef.
		def traitComposition: (mcDef traitCompositionFrom: mcDef traitComposition parent: def).			
		metaclassDef traitComposition: (mcDef traitCompositionFrom: mcDef classTraitComposition parent: metaclassDef).			
		(mcDef superclassName = #nil)
			ifTrue: [ def superclass: def ]
			ifFalse: [ def superclass: (anRGEnvironment ensureClassNamed: mcDef superclassName) ].
		def category: mcDef category.
		def layout: (mcDef ring2LayoutType parent: def).
		metaclassDef layout: (RGFixedLayout parent: metaclassDef). 
		def comment: (
			(RGComment parent: def) 
				content: mcDef comment;
				author: (mcDef authorForStamp: mcDef commentStamp);
				time: (mcDef timeForStamp: mcDef commentStamp);
				yourself).
		mcDef variables do: [ :each |
			(each class type = #instance) ifTrue: [
				(each name includes: $>) 
					ifFalse: [ def layout addSlot: (RGInstanceVariableSlot named: each name parent: def layout)]
					ifTrue: [ 
						| unknownSlot |
						unknownSlot := RGUnknownSlot named: ((each name copyUpTo: $=) copyWithout: $#) trimBoth parent: def layout.
						unknownSlot expression: (each name copyAfter: $>) trimBoth.
						def layout addSlot: unknownSlot]].
			(each class type = #class) ifTrue: [ 
				def addClassVariable: (RGClassVariable named: each name parent: def)].
			(each class type = #classInstance) ifTrue: [ 
				metaclassDef layout addSlot: (RGInstanceVariableSlot named: each name parent: metaclassDef layout)].
			(each class type = #pool) ifTrue: [ 
				def addSharedPool: (RGPoolVariable named: each name parent: def)]. ]. 
		def]. 
	