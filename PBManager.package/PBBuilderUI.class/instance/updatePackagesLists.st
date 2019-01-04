initialization
updatePackagesLists
	packagesListIn  items: pbmRepository packagesNamesInBS.
	packagesListOut items: pbmRepository packagesNamesOutBS.
	labelIn  label: 'In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Out: ', (packagesListOut listItems size) asString.
	
	