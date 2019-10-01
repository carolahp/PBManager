as yet unclassified
originRepository
	| repositoryReference |
	repositoryReference := self pbRepository repositoryPath.

	^ originRepository
		ifNil: [ originRepository := TonelRepository new
				directory: repositoryReference;
				yourself]