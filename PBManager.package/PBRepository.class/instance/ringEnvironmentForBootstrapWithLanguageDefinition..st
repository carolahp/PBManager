API
ringEnvironmentForBootstrapWithLanguageDefinition: aLanguageDefinitionClass
	self deprecated: 'use ringEnvironmentForBootstrapWithLanguageDefinition: packages: classes: '.
	^ self ringEnvironmentForBootstrapWithLanguageDefinition: aLanguageDefinitionClass packages: self packagesNamesInBootstrap classes: self classesNamesInBootstrap 