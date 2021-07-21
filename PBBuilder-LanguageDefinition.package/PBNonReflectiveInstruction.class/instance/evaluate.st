evaluating
evaluate
	self assert: self imageBuilder isNotNil description: 'Image Builder is nil. Start the kernel generation to instantiate an Image Builder'.
	^ block value: self imageBuilder espellBackend