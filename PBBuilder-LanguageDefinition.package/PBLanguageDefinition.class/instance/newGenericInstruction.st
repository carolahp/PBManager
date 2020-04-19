instructions-instantiation
newGenericInstruction
	^ PBInstructionGenericRemote new 
		languageDefinition: self;
		imageBuilder: self imageBuilder;
		yourself