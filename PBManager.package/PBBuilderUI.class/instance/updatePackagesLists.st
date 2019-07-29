initialization
updatePackagesLists
	packagesListIn  items: pbmRepository packagesNamesInBootstrap.
	packagesListOut items: pbmRepository packagesNamesOutBootstrap.
	classesListIn items: pbmRepository classesNamesInBootstrap.
	classesListOut items: pbmRepository classesNamesOutBootstrap.
	
	labelIn  label: 'In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Out: ', (packagesListOut listItems size) asString.
	