specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			"New repository options"
			col newRow: [ :r | 
								r add: #labelNewRepo;
								  add: #buttonNewRepo ] height: self toolbarHeight;
				newRow: [ :r | 
								r add: #labelNewRepoName;
								  add: #textNewRepoName ] height: self toolbarHeight;
				newRow: [ :r | 
								r add: #labelNewRepoMetaclass;
								  add: #textNewRepoMetaclass ] height: self toolbarHeight;
				"Existent Repositories"
				newRow: [ :r | 
								r add: #labelRepo ] height: self toolbarHeight;
				newRow: [ :r | 
								r add: #buttonAddRepo;
								  add: #buttonSaveRepo;
								  add: #buttonRefresh;
								  add: #buttonOpenFolderContainingRepos;
								  add: #buttonLoadRepo ] height: self toolbarHeight;
				add: #listRepo ];	
		yourself
	