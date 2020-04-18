initialization
initializeWidgets
	
	labelPackagesNum := self newLabel.
	labelPackagesNum label: 'Packages: '.
	
	labelClassesNum := self newLabel.
	labelClassesNum label: 'Classes: '.

	labelTitle  := self newLabel.
	labelTitle label: 'Language Definition: '.
	
	listPackages := self newMultiColumnList.
	listPackages displayBlock: [ :package | 
		{ package name . package definedBehaviors size asString, ' classes' }].
	listPackages whenSelectedItemChanged: [ :event |
		self updateClassesList ]. 
	listClasses := self newMultiColumnList.
	listClasses displayBlock: [ :class | 
		{ class name . class methodDict size asString, ' methods' }].
	
	buttonEditCode := self newButton.
	buttonEditCode label: 'Edit code'.
	buttonEditCode icon: (Smalltalk iconNamed: #edit).
	
	buttonVisualize := self newButton.
	buttonVisualize label: 'Visualize'.
	buttonVisualize icon: (Smalltalk iconNamed: #testRunner)