initialization
initializeWidgets
	
	pbBuilderRepositoriesUI := PBBuilderUIRepositories withPBBuilder: self pbBuilder.
	pbBuilderUILanguageDefinition := PBBuilderUILanguageDefinition withPBBuilder: self pbBuilder.
	pbBuilderUIBashScripter := PBBuilderUIBashScripter withPBBuilder: self pbBuilder.
	pbBuilderUIImagesInDisk := PBBuilderUIImagesInDisk withPBBuilder: self pbBuilder.
	pbBuilderUIImagesInMemory := PBBuilderUIImagesInMemory withPBBuilder: self pbBuilder.
	pbBuilderUIGenerateImage := PBBuilderUIGenerateImage withPBBuilder: self pbBuilder.
	