initialization
openVisualization
	| visualization |
	[ visualization := PBLanguageVisualization new
							visualizeClassHyerarchyAndInstSpec: self pbRepository ringEnvironment
		] on: Exception 
		  do: [ ^ self inform: 'Impossible to build visualization. The Package PBBuilder-LanguageVisualization is not installed' ].
	
	[ visualization 	inspect ] on: Warning do: [ :e | e resume ]