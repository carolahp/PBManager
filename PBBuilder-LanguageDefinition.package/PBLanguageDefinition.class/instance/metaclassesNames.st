accessing
metaclassesNames
	
	^ metaclassesNames ifNil: [
		| metaclass metaclassClass | 
		metaclass := self classWithRole: 'Metaclass'.
		metaclassClass := metaclass metaclass.
		metaclassesNames := { metaclass name . metaclassClass name } ]
	