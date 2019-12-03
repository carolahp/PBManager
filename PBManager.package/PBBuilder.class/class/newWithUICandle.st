instantiation
newWithUICandle
	self deprecated: 'initialize from PBBuilderUI instead'.
	^ self newWithUICandleInDirectory: self bootstrapRepositoryPath asFileReference  / 'srcPharoCandle'.
	