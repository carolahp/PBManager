*PBManager
at: aString ifAbsent: aBlockClosure 
	"returns nil because this method is used to get CompiledMethod for generating Compiled Method instances durin the bootstrap"
	^ aBlockClosure value