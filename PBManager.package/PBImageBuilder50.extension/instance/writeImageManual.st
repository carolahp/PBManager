*PBManager
writeImageManual
	self writeSnapshot: imageFileReference fullName ofTransformedImage: espellBackend simulator objectMemory headerFlags: 0 screenSize: 0.
		PBStepFinishedSignal log: 'Installed extension methods'.