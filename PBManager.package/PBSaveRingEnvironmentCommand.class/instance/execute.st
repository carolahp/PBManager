execution
execute
		
	"Writing system package in file"
	tonelFileReference ensureCreateDirectory .
	languageDefinition writeIntoTonel: tonelFileReference .
	self inform: 'Exported to: ', tonelFileReference fullName 