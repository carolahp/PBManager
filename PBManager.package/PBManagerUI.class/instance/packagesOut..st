initialization
packagesOut: anArray
	"receives anArray containing the names of the packages that won't be considered in the bootstrapped image"
	packagesListOut := self newList.
	packagesListOut
		items: anArray asSortedCollection sorted;
		displayBlock: [:item | item ];
		doubleClickAction: [:event | 
			| item index |
			index := event selectedRowIndex.
			item := (packagesListOut listItems) at: index.
			packagesListOut items: ((packagesListOut listItems) removeIndex: index).
			packagesListIn items: ((packagesListIn listItems) add: item; yourself)].
		