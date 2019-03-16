*PBBuilder-LanguageVisualization
numberOfLinesOfCode
	^ (self methods collect: [ :m | m sourceCode lines size ]) inject: 0 into: [ :sum :each | sum + each ] 