tests-running
runTests
	| instVarsMap classDef arrayDef smallIntDef |
	instVarsMap := self instanceVariableMapping.
	instVarsMap initializeIndexes.
	"testing Class"	
	classDef := self classWithRole: #Class.
	classDef cleanErrors.
	
	(((self instanceVariableMapping) classSuperclassIndex = 1) 
	and: (((self instanceVariableMapping) classMethodDictionaryIndex = 2) 
	and: ((self instanceVariableMapping) classFormatIndex = 3)))
	ifFalse: [ classDef addError: 'superclass, methodDict and classFormat are not the first 3 instance variables' ].

	arrayDef := self classWithRole: #Array.
	arrayDef cleanErrors.
	(arrayDef layout isVariableLayout) ifFalse: [ arrayDef addError: 'Array has not Variable Layout.' ].
	(arrayDef allInstVarNames isEmpty) ifFalse: [ arrayDef addError: 'Array has inst vars' ].
	
	smallIntDef := self classWithRole: #SmallInteger.
	smallIntDef cleanErrors.
	(smallIntDef layout isImmediateLayout) ifFalse: [ smallIntDef addError: 'SmallInteger is not an Immediate' ].
	(smallIntDef allInstVarNames isEmpty) ifFalse: [ smallIntDef addError: 'SmallInteger has instance variables' ].
	