instructions-instantiation
newInstruction
	^ PBReflectiveInstruction new 
		languageDefinition: self;
		imageBuilder: self imageBuilder;
		yourself