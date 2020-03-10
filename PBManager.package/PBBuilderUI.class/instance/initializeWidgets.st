initialization
initializeWidgets
	packagesListOut := self newList displayBlock: [:item | item ].
	packagesListIn  := self newList displayBlock: [:item | item ].
	
	classesListOut  := self newList displayBlock: [:item | item ].
	classesListIn   := self newList displayBlock: [:item | item ].
	
	labelIn  := self newLabel.
	labelOut := self newLabel.
	labelClassesIn  := self newLabel.
	labelClassesOut := self newLabel.
	
	buttonRemoveAll := self newButton.
	buttonRemoveAll label: 'remove all'.
	
	buttonAddAll := self newButton.
	buttonAddAll label: 'add all'.
	
	buttonShowSourceCode := self newButton.
	buttonShowSourceCode label: 'Edit code'.
	
	buttonShowVisualization := self newButton.
	buttonShowVisualization label: 'Visualize'.
	
	pbBuilderRepositoriesUI := PBBuilderUIRepositories withPBBuilder: self pbBuilder.
	pbBuilderUIBashScripter := PBBuilderUIBashScripter withPBBuilder: self pbBuilder.
	pbBuilderUIImages := PBBuilderUIImagesInDisk withPBBuilder: self pbBuilder.
	pbBuilderUIGeneratedImages := PBBuilderUIImagesInMemory withPBBuilder: self pbBuilder.
	pbBuilderUIGenerateImage := PBBuilderUIGenerateImage withPBBuilder: self pbBuilder.
	self update