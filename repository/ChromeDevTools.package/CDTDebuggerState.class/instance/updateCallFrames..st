accessing
updateCallFrames: aCollection
	"Update the receiver's call frames with the supplied collection of JSON data"

	callFrames := aCollection collect: [ :each |
		CDTCallFrame fromDictionary: each in: self debugger ].