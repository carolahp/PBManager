metamodel
ensureRingDefinitionIn: aPBLanguageDefinition package: aRGPackage 

	| def |
	
	def := self ensureRingDefinitionIn: aPBLanguageDefinition.
	def package: aRGPackage.
	def category: def tags first. "fix tags to do not contain package names"
	^ def