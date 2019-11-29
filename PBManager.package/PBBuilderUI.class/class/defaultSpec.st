specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow: [ :row |
					
					row 
						newColumn: [ :c | c newRow: [ :r | 
													r add: #labelRepo ] height: self toolbarHeight;
												newRow: [ :r | 
													r add: #buttonAddRepo.
													r add: #buttonSaveRepo ] height: self toolbarHeight ]; 
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
																newColumn: [ :c1 | c1 add: #buttonBootstrap ]
													] height: self toolbarHeight
						];
						newColumn: [ :c | 
							c 
								newRow: [ :row1 |
												row1 
													newColumn: [ :c1 | c1 add: #imagesList ]
								];
								newRow: [ :row2 | 
												row2 
													newColumn: [ :c1 | c1	 add: #buttonInspectImage ] 
								] height: self toolbarHeight
						]
					];
				newRow: [ :row1 |
					row1 add: #textCodeInput
				] height: self toolbarHeight * 4;
				newRow: [ :row1 |
					row1 add: #buttonExecInGenImage;
						  add: #buttonEvalInGenImage
				] height: self toolbarHeight;
				newRow: [ :row1 |
					row1 add: #buttonWriteGenImage
				] height: self toolbarHeight
				
				];
		yourself
	