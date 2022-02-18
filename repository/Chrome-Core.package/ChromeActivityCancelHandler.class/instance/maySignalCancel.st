cancellation
maySignalCancel

	shouldSignal ifFalse: [ ^ self ].
	shouldSignal := false.

	ChromeActivityCanceled signal: (cancelMessage ifNil: [ 'Canceled' ])