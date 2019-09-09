accessing
default 
	| tonel langDefinition tonelFileReference |
	tonelFileReference := '../../../srcPharoCandle' asFileReference.
	
	tonel := TonelRepository new directory: tonelFileReference .
	
	langDefinition := (tonel asRingEnvironmentWith: #('Kernel-Optional-Graphics' 'Kernel-Collections-Unordered' 'Kernel-Objects' 'Kernel-Classes' 'Kernel-Streams' 'Kernel-System' 'Kernel-Numeric' 'Kernel-Collections-Abstract' 'Kernel-Optional' 'Kernel-Processes' 'Kernel-Collections-Ordered' 'Kernel-Methods') 
		languageDefinition: PBLanguageDefinitionPharoCandle) 
		tonelFileReference: tonelFileReference;
		yourself .
		
	^ langDefinition fixProtoObjectClassSuperclass 