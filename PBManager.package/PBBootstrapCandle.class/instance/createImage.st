accessing
createImage

	builder := PBImageBuilderCandle new.
	builder versionInfo: versionInfo.
	builder imageFileReference: imageReference.
	builder systemDefinition: ringEnvironment.
	builder espellBackend instanceVariableMapping: (PBInstanceVariableMappingPharoCandle onEnvironment: ringEnvironment ).
		
	builder bootstrap