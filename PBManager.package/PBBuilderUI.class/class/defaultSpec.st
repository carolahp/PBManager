specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow: [ :row |
					
					row 
						add: #pbBuilderRepositoriesUI; 
						newColumn: [ :c | c add: #labelOut  height: self toolbarHeight . 
												c add: #buttonAddAll height: self toolbarHeight . 
												c add: #packagesOutList.	
												c add: #labelClassesOut height: self toolbarHeight .
												c add: #classesListOut.];
						newColumn: [ :c | c add: #labelIn height: self toolbarHeight.
												c add: #buttonRemoveAll  height: self toolbarHeight.
											   c add: #packagesInList.
												c add: #labelClassesIn height: self toolbarHeight.
												c add: #classesListIn.
												c 
													newRow: [
													 :row1 |
															row1 
																newColumn: [ :c1 | c1 add: #buttonShowSourceCode ];
																newColumn: [ :c1 | c1 add: #buttonShowVisualization ];
																newColumn: [ :c1 | c1 add: #buttonBootstrap ]
													] height: self toolbarHeight
						]
					];
				newRow: [ :row1 | 
					row1 
						add: #pbBuilderUIGeneratedImages ];
				newRow: [ :row1 |
					row1 
						add: #pbBuilderUIImages;
						add: #pbBuilderUIBashScripter
						
				] height: 300 
			];
		yourself
	