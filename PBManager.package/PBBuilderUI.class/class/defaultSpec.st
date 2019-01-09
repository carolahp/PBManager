specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :col |
			col 
				newRow: [ :row |
					
					row 
						newColumn: [ :c | c add: #labelOut  height: self toolbarHeight . 
												c add: #buttonAddAll  height: self toolbarHeight . 
												c add: #packagesOutList.	];
						newColumn: [ :c | c add: #labelIn height: self toolbarHeight .
												c add: #buttonRemoveAll  height: self toolbarHeight .  
											   c add: #packagesInList.				 
												c 
													newRow: [
													 :row1 |
															row1 
																newColumn: [ :c1 | c1 add: #buttonShowSourceCode ];
																newColumn: [ :c1 | c1 add: #buttonBootstrap ]
													] height: self toolbarHeight;
													newRow: [
													 :row1 |
															row1 
																newColumn: [ :c1 | c1 add: #buttonInspectImage ]
													] height: self toolbarHeight
						]
					]  
				];
		yourself
	