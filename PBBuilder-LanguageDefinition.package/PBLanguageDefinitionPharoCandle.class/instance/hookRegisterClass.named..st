hooks
hookRegisterClass: anEP2RemoteClass named: aString
	| theClass theClassName |
	
	theClass := anEP2RemoteClass instanceSide.
	theClassName := theClass name.
	
	^ self newInstruction 
		code: 'Smalltalk globals at: theClassName put: theClass';
		temps: {'theClassName' -> theClassName asSymbol.
				   'theClass' -> theClass.
				   };
		yourself