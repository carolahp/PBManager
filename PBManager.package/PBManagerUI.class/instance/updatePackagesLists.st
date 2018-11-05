initialization
updatePackagesLists
	packagesListIn  items: ((packages select: [ :x | x ] ) keys).
	packagesListOut items: ((packages reject: [ :x | x ] ) keys).
	labelIn  label: 'In: ' , (packagesListIn  listItems size) asString.
	labelOut label: 'Out: ', (packagesListOut listItems size) asString.
	