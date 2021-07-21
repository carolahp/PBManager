announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer 
		when: PBSelectedImageInDiskChanged 
		do: [ :evt | | cmd |
			cmd := evt imageInDisk 
				ifNil: ['']
				ifNotNil: [ self defaultCommand , ' ', evt image fileName ].
			self textBashInput text: cmd
		 ]