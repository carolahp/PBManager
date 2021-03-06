initialization
initializeWidgets
			
	imagesList := self newMultiColumnList.
	imagesList displayBlock: [ :img | self wrapImageItem: img].
	imagesList sortingBlock: [ :a :b | a modificationTime > b modificationTime ].
	
	buttonInspectImage := self newButton.
	buttonInspectImage label: 'Inspect'.
	buttonInspectImage icon: (Smalltalk iconNamed: #glamorousInspect)..
	
	buttonDeleteImage := self newButton.
	buttonDeleteImage icon: (Smalltalk iconNamed: #glamorousTrash).
	
	buttonOpenContainingFolder := self newButton.
	buttonOpenContainingFolder icon: (Smalltalk iconNamed: #glamorousOpen).
	
	buttonRefresh := self newButton.
	buttonRefresh icon: (Smalltalk iconNamed: #glamorousRefresh).
	
	