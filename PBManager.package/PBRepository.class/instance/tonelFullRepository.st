accessing
tonelFullRepository
	^ tonelFullRepository
		ifNil: [ tonelFullRepository := TonelRepository new
												 	directory: tonelPath asFileReference ]