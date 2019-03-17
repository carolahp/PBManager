accessing
default 
	| tonel langDefinition |
	tonel := TonelRepository new directory: './srcPharoCandle' asFileReference.
	langDefinition := tonel asRingEnvironmentWith: #('Kernel-Optional-Graphics' 'Kernel-Collections-Unordered' 'Kernel-Objects' 'Kernel-Classes' 'Kernel-Streams' 'Kernel-System' 'Kernel-Numeric' 'Kernel-Collections-Abstract' 'Kernel-Optional' 'Kernel-Processes' 'Kernel-Collections-Ordered' 'Kernel-Methods') 
		languageDefinition: PBLanguageDefinitionPharoCandle .
	^ langDefinition