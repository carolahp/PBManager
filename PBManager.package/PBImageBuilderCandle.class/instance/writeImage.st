running
writeImage
	| metadataFileReference |
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

	self freeForwarders.
	self compactImage.
	self reportSizes.

	imageFileReference := self imageFileReference.	
	self writeSnapshot: imageFileReference fullName ofTransformedImage: espellBackend simulator objectMemory headerFlags: 0 screenSize: 0.
	
	" write .bimage file, which contains metadata about the image "
	metadataFileReference := self metadataFileReferenceForImage: imageFileReference.
	metadataFileReference writeStreamDo: [ :fs |
		STONJSON put: { #name -> imageFileReference basenameWithoutExtension . #bootstrapper -> #Candle . #script -> '' . #timestamp -> DateAndTime now asString } asDictionary onStream: fs
	].	
	self inform: 'Image written in: ', imageFileReference fullName
