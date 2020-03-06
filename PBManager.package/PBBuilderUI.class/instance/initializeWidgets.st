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
	
	buttonBootstrap := self newButton.
	buttonBootstrap label: 'Generate img'.
	
	buttonRemoveAll := self newButton.
	buttonRemoveAll label: 'remove all'.
	
	buttonAddAll := self newButton.
	buttonAddAll label: 'add all'.
	
	buttonShowSourceCode := self newButton.
	buttonShowSourceCode label: 'Explore'.
	
	buttonShowVisualization := self newButton.
	buttonShowVisualization label: 'Visualize'.
	
	pbBuilderRepositoriesUI := PBBuilderUIRepositories withPBBuilder: self pbBuilder.
	pbBuilderUIBashScripter := PBBuilderUIBashScripter withPBBuilder: self pbBuilder.
	pbBuilderUIImages := PBBuilderUIImagesInDisk withPBBuilder: self pbBuilder.
	pbBuilderUIGeneratedImages := PBBuilderUIImagesInMemory withPBBuilder: self pbBuilder.
	
	
	self update