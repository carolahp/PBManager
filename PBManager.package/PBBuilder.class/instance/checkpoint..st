announce
checkpoint: aString 
	"self announcer announce: (PBStepFinished new message: '> ', aString)"
	Transcript show: aString