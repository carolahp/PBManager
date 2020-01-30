auxiliar
wrapImageItem: img
	"wraps a PBImage to be displayed in a multicolumn list"
	^  {img fileName . (img size / 1000) asFloat asString , ' Kb'. img modificationTime asStringYMDHM }