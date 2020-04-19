instructions-instantiation
newInstVarAssignmentInstruction
	^ PBInstructionInstVarAssignment new 
		languageDefinition: self;
		imageBuilder: self imageBuilder;
		yourself