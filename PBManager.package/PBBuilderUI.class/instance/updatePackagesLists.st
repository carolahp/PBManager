refreshing
updatePackagesLists
	self pbRepository ifNil: [ ^ self unloadRepository ].
	packagesListIn  items: (self pbRepository packagesNamesInBootstrap  asOrderedCollection sort: [:a :b | a < b ]).
	packagesListOut items: (self pbRepository packagesNamesOutBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	classesListIn items: (self pbRepository classesNamesInBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	classesListOut items: (self pbRepository classesNamesOutBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	
	labelIn  label: 'Packages In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Packages Out: ', (packagesListOut listItems size) asString.
	
	labelClassesIn  label: 'Classes In: ' , (classesListIn  listItems size) asString.
	labelClassesOut label: 'Classes Out: ', (classesListOut listItems size) asString.
	