instructions-instantiation
hookInitializeMethodDictionaryFor: aClassMirror 
	| code temps |
	code := 	'theBehavior methodDictionary: ({classMethodDictionary} new: capacity)' format: 	{'classMethodDictionary'-> self classMethodDictionary name } asDictionary.
	temps := {
			'capacity' -> aClassMirror asRGClass methods size.
			'theBehavior' -> aClassMirror }.
	^ self newInstruction 
		code: code;
		temps: temps;
		yourself
	
