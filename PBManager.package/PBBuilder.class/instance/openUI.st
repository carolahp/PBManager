accessing
openUI 
	self pbBuilderUI ifNotNil: [ self pbBuilderUI openWithSpec ]
	ifNil: [ Exception signal: 'Cant open a ui for the current repository. You need to set the parameter showUI to true before' ]