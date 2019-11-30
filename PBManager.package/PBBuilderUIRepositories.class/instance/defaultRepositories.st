loading
defaultRepositories
	| langFilesReferences pbBuilders |
	langFilesReferences := (self pbBuilderUI defaultLocationOfRepositories directories 
		collect: [ :dir | | langFiles | langFiles := (dir files select: [ :file | file extension = 'lang']). 
									langFiles isEmpty 
										ifTrue: [ nil ]
										ifFalse: [ langFiles first ] ] 
		thenReject: [ :langFile | langFile isNil ]).
	pbBuilders := langFilesReferences collect: [ :fileRef | PBRepository fromLangFile: fileRef ].
	^ pbBuilders
		