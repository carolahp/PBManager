accessing
default 
	| tonel langDefinition tonelFileReference |
	tonelFileReference := '../../../srcPharoCandle' asFileReference.
	
	tonel := TonelRepository new directory: tonelFileReference .
	
	langDefinition := (tonel asRingEnvironmentWith: self defaultPackagesListFull 
		languageDefinition: PBLanguageDefinitionPharoCandle) 
		tonelFileReference: tonelFileReference;
		yourself .
		
	^ langDefinition fixProtoObjectClassSuperclass 