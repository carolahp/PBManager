initialization
initialize 
	| metadataFileBasename |
	super initialize.
	
	metadataFileBasename := imageFileReference basenameWithoutExtension, '.', self class metadataExtension.
	metadataFileReference := (imageFileReference parent pathString,'/', metadataFileBasename) asFileReference.
	metadataFileReference exists 
		ifTrue: [  ]
		ifFalse: [ "create metadata file using the attributes already set for the object"
			metadataFileReference writeStreamDo: [ :fs |
				STONJSON 
					put: { 
						#name -> self name. 
						#bootstrapper -> self bootstrapper. 
						#scriptCommand -> self scriptCommand. 
						#metamodel -> self metamodel asString.
						#scriptArguments -> self scriptArguments.
						#timestamp -> self timestamp } asDictionary 
					onStream: fs] ].
			executionTimestamps := #() asOrderedCollection 
	
		
	