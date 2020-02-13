*PBManager
at: aString ifAbsent: aBlockClosure
	"always evaluate the block because the dummy environment is always empty" 
	^ aBlockClosure value