accessing
setGlobal: aString value: anEPMirror 
	^ bootstrapEnvironment at: aString put: anEPMirror 