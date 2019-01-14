as yet unclassified
prepareBootstrap
	"preparation steps for manual bootstrap"
	self ensureBaselineOfPharoBootstrap.
	"the next lines are from the original method 'PBBootstrap>>prepareEnvironmentForHermes"
	ringEnvironment fixProtoObjectClassSuperclass.
	ringEnvironment addGlobalsNamed: #(Smalltalk Transcript FileStream MacRomanTextConverter ChangeSet Character SourceFiles Processor Display Sensor UTF8TextConverter SystemOrganization Undeclared TextConstants).
	ringEnvironment clean
	"end of fix"
	self prepareEnvironmentForExport.