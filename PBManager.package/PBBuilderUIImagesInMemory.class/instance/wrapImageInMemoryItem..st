formatting
wrapImageInMemoryItem: aPBImageInMemory
	"wraps a PBImageInMemory to be displayed in a multicolumn list"
	^  {aPBImageInMemory imageName . 
		(aPBImageInMemory size / 1000) asFloat asString , ' Kb'. 
		aPBImageInMemory generationTime asStringYMDHM }