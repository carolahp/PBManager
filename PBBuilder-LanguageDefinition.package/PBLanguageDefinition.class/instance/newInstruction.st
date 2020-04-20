instructions-instantiation
newInstruction
	^ PBInstructionGenericRemote new 
		languageDefinition: self;
		imageBuilder: self imageBuilder;
		yourself