ui
statusString 

	^ String streamContents: [ :stream |
		self statusOn: stream ]