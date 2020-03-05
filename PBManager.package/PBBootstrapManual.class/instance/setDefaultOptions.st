bootstrapping
setDefaultOptions
	| options |
	options := CommandLineArguments new.
	architecture := options optionAt: 'ARCH' ifAbsent: [ '32' ].
	buildNumber := options
		optionAt: 'BUILD_NUMBER'
		ifPresent: [ :read | Number readFrom: read ifFail: [ -1 ] ]
		ifAbsent: [ -1 ].
	versionInfo := options
		optionAt: 'VERSION_INFO'
		ifAbsent:
			[ "TODO: replace the next provisory value for the real git version info" 'v7.0.0-alpha-5014-gd40cba880' ].
	('Architecture: ' , architecture asString) traceCr.
	('BuildNumber: ' , buildNumber asString) traceCr.
	('VersionInfo: ' , versionInfo asString) traceCr.
	versionInfo := (PBVersionInfo fromLongGitDescribe: versionInfo)
		buildNumber: buildNumber;
		yourself