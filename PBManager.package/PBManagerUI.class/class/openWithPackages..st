instance creation
openWithPackages: aDictionary
	<example>
	| inst |
	inst := self new
				packagesIn:  (aDictionary select: [:val | val ]) keys;
				packagesOut: (aDictionary reject: [:val | val ]) keys.
	^ inst  openWithSpec.