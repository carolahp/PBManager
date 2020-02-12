accessing
selectedRepository
	^ [self listRepo listItems at: self listRepo selectedIndex] on: SubscriptOutOfBounds do: [ :e | self error: 'You must select a repository' ]