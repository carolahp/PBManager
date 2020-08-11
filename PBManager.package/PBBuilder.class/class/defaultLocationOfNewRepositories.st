accessing
defaultLocationOfNewRepositories
	^ (Smalltalk os environment at: 'LANGUAGE_DEFINITIONS' ifAbsent: ['./bootstrap/language-definitions-new-repo']) asFileReference