initialization
updatePackagesLists

	packagesListIn  items: (pbmRepository packagesNamesInBootstrap  asOrderedCollection sort: [:a :b | a < b ]).
	packagesListOut items: (pbmRepository packagesNamesOutBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	classesListIn items: (pbmRepository classesNamesInBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	classesListOut items: (pbmRepository classesNamesOutBootstrap asOrderedCollection sort: [:a :b | a < b ]).
	
	labelIn  label: 'In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Out: ', (packagesListOut listItems size) asString.
	