initialization
updatePackagesLists
	packagesListIn  items: ((packages select: [ :x | (x at:2) ] ) collect: [ :x | x at: 1]).
	packagesListOut items: ((packages reject: [ :x | (x at:2) ] ) collect: [ :x | x at: 1])