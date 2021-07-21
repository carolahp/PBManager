as yet unclassified
visualizeOwnerInstanceVariable: aLanguageDefinition

| classesToAnalyze c b |

classesToAnalyze := (aLanguageDefinition allClasses).

c := RTComposer new.
c gap: 35.
"-------"
b := RTMondrian new.
b view: c view.
"b shape circle if: [ :cls | cls numberOfMethods > 10 ] fillColor: Color red."
b shape circle if: [ :cls | cls allInstVarNames contains: [ :ivname | ivname = 'owner' ] ] fillColor: Color green.
b nodes: classesToAnalyze.
b edges connectFrom: #superclass.
b normalizer
	normalizeSize: #numberOfLinesOfCode
	min: 5
	max: 15
	using: #sqrt.
b layout tree.
b build.
c group: #hierarchy.

^ c view