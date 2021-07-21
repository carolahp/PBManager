metamodel
ensureRingDefinitionIn: anRGEnvironment package: anRGPackage
	
	| def  |
	
	def := self ensureRingDefinitionIn: anRGEnvironment.
	def package: anRGPackage.

	^ def
