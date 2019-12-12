specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col newRow: [ :r | 
								r add: #labelRepo ] height: self toolbarHeight;
				newRow: [ :r | 
								r add: #buttonAddRepo;
								  add: #buttonSaveRepo;
								  add: #buttonLoadRepo;
								  add: #buttonOpenFolderContainingRepos ] height: self toolbarHeight;
				add: #listRepo ];	
		yourself
	