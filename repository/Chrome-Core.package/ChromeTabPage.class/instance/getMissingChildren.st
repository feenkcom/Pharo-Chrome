operations - dom
getMissingChildren

	| childless |
	ChromeStringSignal new
		message: 'getMissingChildren';
		emit.
	childless := rootNode allSelect: [ :each | each childNodeCount > each children size ].
	[ childless notEmpty ] whileTrue: [ 
		ChromeStringSignal new
			message: 'getMissingChildren size: ', childless size printString;
			emit.
		childless do: [ :each | self requestChildNodesAt: each depth: 100 ].
		childless := rootNode allSelect: [ :each | each childNodeCount > each children size ] ].
	ChromeStringSignal new
		message: 'getMissingChildren done';
		emit.
