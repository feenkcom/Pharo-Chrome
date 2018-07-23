operations - dom
getMissingChildren

	| childless canContinue |
	ChromeStringSignal new
		message: 'getMissingChildren';
		emit.
	childless := rootNode allSelect: [ :each | each childNodeCount > each children size ].
	canContinue := true.
	[ canContinue and: [ childless notEmpty ] ] whileTrue: [ 
		ChromeStringSignal new
			message: 'getMissingChildren size: ', childless size printString;
			emit.
		childless do: [ :each | 
			[ self requestChildNodesAt: each depth: 100 ]
				on: ChromeLoadTimeout 
				do: [ canContinue := false ] ].
		childless := rootNode allSelect: [ :each | each childNodeCount > each children size ] ].
	ChromeStringSignal new
		message: 'getMissingChildren done';
		emit.
