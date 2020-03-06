initialization
initializePresenter
	buttonDebugInImage whenActionPerformedDo:  
	[ :event |  
		self listGeneratedImages selectedItem debug: textCodeInput text ].
	
	buttonEvaluateInImage whenActionPerformedDo:  
	[ :event |
		(self listGeneratedImages selectedItem evaluate: self textCodeInput text) inspect ].
	
	listGeneratedImages whenSelectionChanged: [ 
		:event |
			self update ]