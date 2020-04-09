accessing
initializeBuilder
	builder := self builderClass new.
	builder versionInfo: versionInfo.
	builder imageFileReference: imageReference.
	builder systemDefinition: ringEnvironment.
	builder espellBackend instanceVariableMapping: (self instanceVariableMappingClass onEnvironment: ringEnvironment ).