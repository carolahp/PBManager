loading
defaultRepositories
	| langFilesReferences pbBuilders |
	langFilesReferences := (self pbBuilder locationOfRepositories directories 
		collect: [ :dir | | langFiles | langFiles := (dir files select: [ :file | file extension = PBRepository langFileExtension ]). 
									langFiles isEmpty 
										ifTrue: [ nil ]
										ifFalse: [ langFiles first ] ] 
		thenReject: [ :langFile | langFile isNil ]).
	pbBuilders := langFilesReferences collect: [ :fileRef | PBRepository fromLangFile: fileRef ].
	^ pbBuilders
		