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
											   c add: #packagesInList. ].				 ];
				newRow: [ :row |
					row 
						newColumn: [ :c | c add: #buttonBootstrap height: self toolbarHeight ]
			 ] height: self toolbarHeight ];
		yourself
	