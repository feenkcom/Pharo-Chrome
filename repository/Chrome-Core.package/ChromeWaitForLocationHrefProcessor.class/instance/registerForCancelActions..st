accessing
registerForCancelActions: cancelHandler

	super registerForCancelActions: cancelHandler.
	cancelHandler onCancelSend: #stop to: self