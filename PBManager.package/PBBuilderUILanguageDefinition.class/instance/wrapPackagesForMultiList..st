formatting
wrapPackagesForMultiList: packages
	^ packages collect: [ :package | { package name . package definedBehaviors size } ]