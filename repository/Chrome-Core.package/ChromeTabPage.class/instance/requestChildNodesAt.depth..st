operations - dom
requestChildNodesAt: chromeNode depth: depth

	| result processor |
	ChromeStringSignal new
		message:
			'requestChildNodesAt: ' , chromeNode printString , ' depth: '
			, depth printString;
		emit.
	processor := ChromeSetChildNodeProcessor rootNode: chromeNode.
	processor registerForCancelActions: cancelHandler.
	self addMessageProcessor: processor.
	result := self sendMessage: { 
			          ('method' -> 'DOM.requestChildNodes').
			          ('params' -> { 
				           ('nodeId' -> chromeNode nodeId).
				           ('depth' -> depth) } asDictionary) } asDictionary.
	self checkResponse: result.
	processor wait.
	self removeMessageProcessor: processor.
	ChromeStringSignal new
		message: 'requestChildNodesAt: ' , chromeNode printString , ' done';
		emit.
	cancelHandler maySignalCancel.
	^ result