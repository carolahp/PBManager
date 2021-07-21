testing
classVarInheritsFromAssociation
	| classVar classAssoc |
	classVar := self classClassVariable.
	classVar cleanErrors.
	classAssoc := self classAssociation.
	(classVar = classAssoc or: [ classVar inheritsFrom: classAssoc ]) ifFalse: [ classVar addError: classVar name, ' should inherit from or be the same as ', classAssoc name ]