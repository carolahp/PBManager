accessing
setDefaultOptions
	| options |
	options := CommandLineArguments new.
	architecture := options optionAt: 'ARCH' ifAbsent: [ '32' ].
	buildNumber := '-1'.
	versionInfo := '-1'.
	
	('Architecture: ' , architecture) logCr.
	('BuildNumber: ' , buildNumber) logCr.
	('VersionInfo: ' , versionInfo) logCr. 
	
	"versionInfo := (PBVersionInfo fromLongGitDescribe: versionInfo)
		buildNumber: buildNumber;
		yourself".
	