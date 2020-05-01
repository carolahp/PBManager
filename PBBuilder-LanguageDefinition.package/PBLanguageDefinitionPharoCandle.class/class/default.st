accessing
default 
	| tonel langDefinition tonelFileReference |
	tonelFileReference := './bootstrap/language-definitions/candleOriginal' asFileReference.
	
	tonel := TonelRepository new directory: tonelFileReference .
	
	langDefinition := (tonel asRingEnvironmentWith: nil 
		languageDefinition: PBLanguageDefinitionPharoCandle) 
		tonelFileReference: tonelFileReference;
		yourself .
		
	^ langDefinition fixProtoObjectClassSuperclass 