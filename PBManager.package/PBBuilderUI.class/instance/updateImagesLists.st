initialization
updateImagesLists
	imagesList  items: (FileDirectory  default entries select: [ :e | e basename size = 33 and: [ (e basename findString: 'bootstrap') > 0 ] and: [ (e basename findString: '.image') > 0 ] ])