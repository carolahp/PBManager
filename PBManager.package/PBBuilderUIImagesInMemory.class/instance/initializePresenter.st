initialization
initializePresenter
	buttonDebugInImage whenActionPerformedDo:  
	[ :event |  
		self selectedImage debug: textCodeInput text ].
	
	buttonEvaluateInImage whenActionPerformedDo:  
	[ :event |
		(self selectedImage evaluate: self textCodeInput text) inspect ].
	
	listGeneratedImages whenSelectionChanged: [ 
		:event |
			self update ].
	
	buttonWriteGenImage whenActionPerformedDo:  
	[ :event | | image |
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
	 ].
	buttonViewCode whenActionPerformedDo: 
	[ :event | 
		 self selectedImage browseCode ].
	buttonExternalEvaluate whenActionPerformedDo: 
	[ :event | | response |
		response := (self selectedImage evaluate: self textExternalCodeInput text) asLocalString.
		self textExternalResponse text: response
		 ]