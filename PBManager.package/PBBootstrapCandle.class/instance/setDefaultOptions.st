bootstrapping
setDefaultOptions
	| options |
	options := CommandLineArguments new.
	architecture := options optionAt: 'ARCH' ifAbsent: [ '32' ].
	buildNumber := '-1'.
	versionInfo := '-1'.
	('Architecture: ' , architecture) traceCr.
	('BuildNumber: ' , buildNumber) traceCr.
	('VersionInfo: ' , versionInfo) traceCr

	"versionInfo := (PBVersionInfo fromLongGitDescribe: versionInfo)
		buildNumber: buildNumber;
		yourself"