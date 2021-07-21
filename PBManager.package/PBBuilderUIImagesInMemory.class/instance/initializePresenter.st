initialization
initializePresenter
	buttonDebugInImage whenActionPerformedDo:  
	[ :event | 
		self selectedImage debug: textCodeInput text temps: listCodeVariables listItems ].
	
	buttonEvaluateInImage whenActionPerformedDo:  
	[ :event |
		(self selectedImage evaluate: self textCodeInput text temps: listCodeVariables listItems) asRemoteObjectCasted inspect.
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

	buttonRunImageTests whenActionPerformedDo: 
	[ :event | | result icon |
		icon := Smalltalk iconNamed: #testGreen.
		result := self selectedImage runTests.
		result defects ifNotEmpty: [ :defects | 
			icon := (Smalltalk iconNamed: #testRed).
			defects inspect.].
		buttonRunImageTests icon: icon 
	].


	buttonInspectCodeVariable whenActionPerformedDo: 
	[ :event | | selectedVar |
		selectedVar := listCodeVariables selectedItem.
		selectedVar ifNotNil: [:var | var value inspect] ].