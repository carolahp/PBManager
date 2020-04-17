announce
checkpoint: aString 
	self announcer announce: (PBSubStepFinishedSignal new message: aString)