as yet unclassified
createImage

	builder := self builderClass new. "only available for 32 bits"
	builder versionInfo: versionInfo.
	builder imageFileReference: imageReference.
	builder systemDefinition: ringEnvironment.
	builder espellBackend instanceVariableMapping: (self instanceVariableMappingClass  onEnvironment: ringEnvironment ).
		
	builder bootstrapManual