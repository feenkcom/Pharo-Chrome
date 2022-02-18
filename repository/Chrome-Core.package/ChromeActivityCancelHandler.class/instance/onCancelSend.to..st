registration
onCancelSend: aSelector to: aReceiver

	mutex critical: [ 
		callbacks add:
			(WeakMessageSend receiver: aReceiver selector: aSelector) ]