initialization
initializePresenter
	buttonDebugInImage whenActionPerformedDo:  
	[ :event |  
		self selectedImage debug: textCodeInput text ].
	
	buttonEvaluateInImage whenActionPerformedDo:  
	[ :event |
		(self selectedImage evaluate: self textCodeInput text) inspect.
		self pbBuilder announcer announce: PBSimulatedEvaluationDone new ].
	
	listGeneratedImages whenSelectionChanged: [ 
		:event |
			self update ].
	
	buttonWriteGenImage whenActionPerformedDo:  
	[ :event | 
		self pbBuilder bootstrapper installOnlyMarkedMethods: false.
		self writeSelectedImage
	 ].
	buttonViewCode whenActionPerformedDo: 
	[ :event | 
		 self selectedImage browseCode ].
	buttonExternalEvaluate whenActionPerformedDo: 
	[ :event | | response |
		response := (self selectedImage evaluate: self textExternalCodeInput text) asLocalString.
		self textExternalResponse text: response
		 ].
	
	buttonGenerateImageMinimal whenActionPerformedDo: 
	[ :event | 
		self pbBuilder bootstrapper installOnlyMarkedMethods: true.
		self pbBuilder installMethods.
		self pbBuilder installProcess.
		self writeSelectedImage 
	 ].

	buttonInspectImage whenActionPerformedDo: 
	[ :event | 
		self selectedImage inspectSpurImage
	].

	buttonInspectCodeVariable whenActionPerformedDo: 
	[ :event | | selectedVar |
		selectedVar := listCodeVariables selectedItem.
		selectedVar ifNotNil: [:var | var value inspect] ].