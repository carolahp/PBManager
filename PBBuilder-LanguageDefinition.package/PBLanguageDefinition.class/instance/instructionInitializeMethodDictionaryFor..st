instructions-instantiation
instructionInitializeMethodDictionaryFor: aClassMirror 
	| code temps |
	code := 	'theBehavior methodDictionary: ({classMethodDictionary} new: capacity)' format: 	{'classMethodDictionary'-> (self classWithRole: #MethodDictionary) name } asDictionary.
	temps := {
			'capacity' -> aClassMirror asRGClass methods size.
			'theBehavior' -> aClassMirror }.
	^ self newInstruction 
		code: code;
		temps: temps;
		yourself
	