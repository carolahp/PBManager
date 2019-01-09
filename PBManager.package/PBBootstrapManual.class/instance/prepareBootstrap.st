as yet unclassified
prepareBootstrap
	"preparation steps for manual bootstrap"
	self ensureBaselineOfPharoBootstrap.
	self prepareEnvironmentForHermes. "added to fix the memory SPUR problem generate in the assert for the adding of the Association class"
	self prepareEnvironmentForExport.