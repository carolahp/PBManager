instructions-instantiation
hookInstallMethod: remoteCompiledMethod inBehavior: remoteClass 
	| code temps |
	code := 	'theBehavior methodDict at: selector put: compiledMethod'.
	temps := 
		{'theBehavior' -> remoteClass.
		 'selector' -> remoteCompiledMethod selector.
		 'compiledMethod' -> remoteCompiledMethod }.
	^ self newInstruction 
		code: code;
		temps: temps;
		yourself
	
