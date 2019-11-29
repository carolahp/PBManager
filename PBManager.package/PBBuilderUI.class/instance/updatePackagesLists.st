initialization
updatePackagesLists
	self pbmRepository ifNil: [ ^self ].
	packagesListIn  items: (self pbmRepository packagesNamesInBootstrap  asOrderedCollection sort: [:a :b | a < b ]).
	packagesListOut items: (self pbmRepository packagesNamesOutBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	classesListIn items: (self pbmRepository classesNamesInBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	classesListOut items: (self pbmRepository classesNamesOutBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	
	labelIn  label: 'Packages In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Packages Out: ', (packagesListOut listItems size) asString.
	
	labelClassesIn  label: 'Classes In: ' , (classesListIn  listItems size) asString.
	labelClassesOut label: 'Classes Out: ', (classesListOut listItems size) asString.
	