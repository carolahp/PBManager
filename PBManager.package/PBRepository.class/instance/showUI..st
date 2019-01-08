accessors
showUI: aBoolean
	aBoolean ifTrue: [ self ui: (PBBuilderUI withRepository: self) ]  
	