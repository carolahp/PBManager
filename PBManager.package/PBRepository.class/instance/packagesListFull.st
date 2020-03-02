accessing
packagesListFull
	^ packagesListFull ifNil: [ ^ packagesListFull := languageDefinitionClass defaultPackagesListFull ]