accessing
classByRole: aString 
	"We try to return the class using the accessors because accessors know how to handle situations in which a role has not been defined in the dictionary, but another role can replace it (for example the role classClassVariable can be replaces by the class with the role Association. The method classWithRole: should remain private"
	| role |
	
	role := [ self roleOfClassNamed: aString ]
			on: PBClassDefinitionNotFound 
			do: [ aString ].
	
	^ [self perform: ('class', role) asSymbol] on: Error do: [ nil ]