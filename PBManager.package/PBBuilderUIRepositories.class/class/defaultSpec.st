specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col newRow: [ :r | 
								r add: #labelRepo ] height: self toolbarHeight;
				newRow: [ :r | 
								r add: #buttonAddRepo;
								  add: #buttonSaveRepo;
								  add: #buttonRefresh;
								  add: #buttonOpenFolderContainingRepos;
								  add: #buttonLoadRepo ] height: self toolbarHeight;
				add: #listRepo ];	
		yourself
	