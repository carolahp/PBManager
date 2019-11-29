as yet unclassified
originRepository
	| repositoryReference |
	repositoryReference := self pbRepository tonelPath.

	^ originRepository
		ifNil: [ originRepository := TonelRepository new
				directory: repositoryReference;
				yourself]