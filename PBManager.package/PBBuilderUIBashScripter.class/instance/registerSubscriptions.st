announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer 
		when: PBSelectedImageInDiskChanged 
		do: [ :evt | | cmd |
			cmd := evt image 
				ifNil: ['']
				ifNotNil: [ self defaultCommand , ' ', evt image fileName ].
			self textBashInput text: cmd
		 ]