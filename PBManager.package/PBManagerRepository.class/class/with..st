initialization
with: aDictionary 
	"aDictionary contains the parameters for initialization
#packagesListFull <Array <String> >: is a subset of the packages from the repository. 
					   Determines the packages from the repo that will be considered
#packagesListBS <Array <String> >: packages selected for the bootstrap (BS). 
					   It is a subset of packagesListFull. It can be modified later by the UI
#showUI <Boolean>
#path <String>: the path of the repository"
	| newRepo |
	
	newRepo := self basicNew setParameters: aDictionary; initialize.
	
	"ui opens to allow the user set the final packageListBS selection"
	newRepo ui ifNotNil: [ newRepo ui open ].
	"TODO: show dependency warnings before BS"
	
	^ newRepo 