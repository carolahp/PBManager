initialization
packagesIn: anArray
	"receives anArray containing the names of the packages that will be considered in the bootstrapped image"
	packagesListIn := self newList.
	packagesListIn
		items: anArray asSortedCollection sorted;
		displayBlock: [:item | item ].
		