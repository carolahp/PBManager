initialization
openVisualizationOfOwnerInstanceVariable
	| visualization languageDefinition |
	
	"[" 
	languageDefinition := self pbRepository ringEnvironment.
	languageDefinition runTests.
	visualization := PBLanguageVisualization new
							visualizeOwnerInstanceVariable: languageDefinition .
	"] on: Error 
		  do: [ ^ self inform: 'Impossible to build visualization. The Package PBBuilder-LanguageVisualization is not installed' ].
	"
	[ visualization 	inspect ] on: Warning do: [ :e | e resume ]