*PBManager
at: aString ifAbsent: aBlockClosure 
	^ (self classes select: [ :item | item name = aString ]) first