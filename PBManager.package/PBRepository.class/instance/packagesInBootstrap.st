accessing
packagesInBootstrap
	| packagesNamesIn |
	packagesNamesIn := self packagesNamesInBootstrap.
	^ self ringEnvironment packages select: [ :package | packagesNamesIn anySatisfy: [:pckg | pckg = package name ] ]