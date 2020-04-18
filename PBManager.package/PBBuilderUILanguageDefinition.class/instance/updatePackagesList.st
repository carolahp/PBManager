refreshing
updatePackagesList
	| packages |
	self pbRepository ifNil: [ ^ self unloadRepository ].
	packages := (self pbRepository packagesInBootstrap asOrderedCollection sort: [:a :b | a name < b name ]).
	
	listPackages  items: packages.
	
	labelPackagesNum label: 'Packages In: ' , (listPackages  listItems size) asString.
	
	listPackages setSelectedIndex: 0.
	self updateClassesList