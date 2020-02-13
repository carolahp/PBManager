*PBManager
instVarIndexFor: aString ifAbsent: aBlockClosure
	^ self allInstVarNames indexOf: aString ifAbsent: aBlockClosure