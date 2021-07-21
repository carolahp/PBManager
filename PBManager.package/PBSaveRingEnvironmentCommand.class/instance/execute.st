execution
execute
		
	"Writing system package in file"
	tonelFileReference ensureCreateDirectory .
	languageDefinition exportAsTonelRepository: tonelFileReference .
	self inform: 'Exported to: ', tonelFileReference fullName 