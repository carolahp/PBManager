accessing-images
pbImagesFrom: aFileReference
	| imagesFileReferences |
	
	imagesFileReferences := ((aFileReference entries 
						select: [ :e | (e basename findString: PBImage imageExtension) > 0 ]) asOrderedCollection 
						sort: [:a :b | a name > b name])
						collect: [ :e | e asFileReference ].
	
	^ imagesFileReferences collect: [ :fr | PBImage fromImageFile: fr ]  
	