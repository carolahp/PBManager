accessing
imageFileReference

	^ imageFileReference ifNil: [('./bootstrapped/', self imageFileName, '.', self imageExtension) asFileReference nextVersion.].
	"systemDefinition pbRepository imageFileName"