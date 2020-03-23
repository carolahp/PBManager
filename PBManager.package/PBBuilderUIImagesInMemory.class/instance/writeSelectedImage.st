writing-image
writeSelectedImage
	| image |
	image := self pbBuilder writeImageNamed: self textInputImageName text. 
	"remove the written image from the list of images in memory"
	image ifNotNil: [ 
		self listGeneratedImages 
			items: (self listGeneratedImages listItems 
						select: [ :item | item ~= self listGeneratedImages selectedItem ]).
	"unselect"
		self listGeneratedImages setIndex: 0 .
		self update ]
	ifNil: [ self inform: 'Can''t write, existent file with the same name!' ]