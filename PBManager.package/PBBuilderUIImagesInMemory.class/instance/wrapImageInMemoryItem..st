formatting
wrapImageInMemoryItem: aPBImageInMemory
	"wraps a PBImageInMemory to be displayed in a multicolumn list"
	| image |
	image := aPBImageInMemory.
	^  { image imageName . 
		"(aPBImageInMemory size / 1000) asFloat asString , ' Kb'."
		image classesAreInstalled ifTrue: ['classes'] ifFalse: ['-'].
		image methodsAreInstalled ifTrue: ['methods'] ifFalse: ['-'].
		image processIsInstalled  ifTrue: ['app'] ifFalse: ['-'].
		image generationTime asStringYMDHM }