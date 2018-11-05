API
setPackagesInBS: anArray
	"marks the packages in anArray as part of the Bootstrap"
	anArray do: [ :each |
		(self packages) at: each put: true.
		 ]