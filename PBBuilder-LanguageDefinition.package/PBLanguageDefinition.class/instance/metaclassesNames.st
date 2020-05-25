accessing-specialClasses
metaclassesNames
	
	^ metaclassesNames ifNil: [
		| metaclass metaclassClass | 
		metaclass := self classMetaclass.
		metaclassClass := metaclass metaclass.
		metaclassesNames := { metaclass name . metaclassClass name } ]
	