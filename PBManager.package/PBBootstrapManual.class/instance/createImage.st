as yet unclassified
createImage

	builder := PBImageBuilderManualSpur5032bit new. "only available for 32 bits"
	builder versionInfo: versionInfo.
	builder imageFileReference: imageReference.
	builder systemDefinition: ringEnvironment.
	builder espellBackend instanceVariableMapping: (PBInstanceVariableMapping onEnvironment: ringEnvironment ).
		
	builder bootstrapManual