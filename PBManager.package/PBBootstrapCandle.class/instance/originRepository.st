accessing
originRepository
	| repositoryReference |
	repositoryReference := self repositoryLocation asFileReference.

	^ originRepository
		ifNil: [ originRepository := TonelRepository new
				directory: repositoryReference;
				yourself]