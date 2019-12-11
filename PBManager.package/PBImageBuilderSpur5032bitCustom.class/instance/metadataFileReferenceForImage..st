accessing
metadataFileReferenceForImage: aFileReference 
	^ ('./bootstrapped/', aFileReference basenameWithoutExtension, '.', self metadataExtension) asFileReference