ui
rawDataDictionary
	"Answer a dictionary that is used to display internal state"

	^ { #rawData -> rawData.
		#rootDefinition -> rootDefinition.
		#experimental -> experimental.
		#deprecated -> deprecated.
		#parent -> parent } asDictionary