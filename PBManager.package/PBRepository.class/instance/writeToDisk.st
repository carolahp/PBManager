exporting
writeToDisk
	| tonelFileReference|
	"Writing system package in file"
	tonelFileReference := self tonelPath asFileReference.
	tonelFileReference ensureCreateDirectory.
	self ringEnvironment writeIntoTonel: tonelFileReference.
	self markAsNotModified  