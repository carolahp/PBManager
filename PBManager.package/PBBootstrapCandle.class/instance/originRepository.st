accessing
originRepository
	| repositoryReference |
	repositoryReference := self repositoryLocation / 'srcPharoCandle'.

	^ originRepository
		ifNil: [ originRepository := TonelRepository new
				directory: repositoryReference;
				yourself]