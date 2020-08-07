*PBBuilder
installMethods
	| methods |
	methods := (self methodBuilder methodsFromDefinition: self)
		sorted: [ :a :b | a selector < b selector ].
	methods do: [ :method | 
		(self parent hookInstallMethod: method inBehavior: self remote) evaluate ]
	