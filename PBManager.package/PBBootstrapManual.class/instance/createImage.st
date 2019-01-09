as yet unclassified
createImage

	builder := PBImageBuilderSpur50 forArchitecture: architecture.
	builder versionInfo: versionInfo.
	builder imageFileReference: imageReference.
	builder systemDefinition: ringEnvironment.
	builder espellBackend instanceVariableMapping: (PBInstanceVariableMapping onEnvironment: ringEnvironment ).
		
	builder bootstrapManual