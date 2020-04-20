objectsInitializations
instructionRegisterInstalledBehaviorInGlobals: anEPMirror 
	^ self newDummyInstruction
	"^ self newInstruction
		code: 'Smalltalk globals at: aClassName put: aNewClass';
		temps: { 'aClassName' -> anEPMirror asRGClass name asSymbol.
					'aNewClass'  -> anEPMirror } "