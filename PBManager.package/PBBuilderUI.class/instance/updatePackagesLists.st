initialization
updatePackagesLists
	packagesListIn  items: pbmRepository packagesNamesInBootstrap.
	packagesListOut items: pbmRepository packagesNamesOutBootstrap.
	labelIn  label: 'In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Out: ', (packagesListOut listItems size) asString.
	
	