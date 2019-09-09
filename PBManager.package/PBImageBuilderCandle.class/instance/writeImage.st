running
writeImage
	| imageFileName |
	[[ espellBackend objectMemory flushNewSpace. ]
		on: Halt
		do: [:ex|
			(#(#fullGC #compactImage  #doScavenge:) includes: ex signalerContext sender selector)
				ifTrue: [ex resume]
				ifFalse: [ex pass]]] on: AssertionFailure do: [ :e |
				((e signalerContext sender method selector == #assert:)
					and: [ e signalerContext sender sender method selector = #mapStackPages ])
						ifTrue: [ e resume ]
						ifFalse: [ e pass ]].

	"self freeForwarders."
	"self compactImage."
	"self reportSizes."

	imageFileName := './bootstrapped/bootstrap-',Date today yyyymmdd, 'T',Time now hhmmss24,'.image'.
	
	self writeSnapshot: (imageFileName asFileReference) fullName ofTransformedImage: espellBackend simulator objectMemory headerFlags: 0 screenSize: 0.
	self inform: 'Image written in: ', ((imageFileName asFileReference) fullName)
