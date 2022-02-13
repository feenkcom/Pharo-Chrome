messages
processMessage: aMessageDictionary

	| params messageFrameId |

	aMessageDictionary at: 'method' ifPresent:
		[ :method |
			params := aMessageDictionary at: 'params'.
			method = 'Page.frameStartedLoading' ifTrue:
				[
				messageFrameId := params at: 'frameId'.
				loading add: messageFrameId.
				ChromeStringSignal emit: 'start loading ', messageFrameId printString
					category: self class.
				].
			method = 'Page.frameClearedScheduledNavigation' ifTrue:
				[ 
				messageFrameId := params at: 'frameId'.
				loading remove: messageFrameId
					ifAbsent: [ StringSignal emit: 'unable to remove ', messageFrameId printString ].
				stoppedLoading add: messageFrameId.
				ChromeStringSignal emit: 'frame cleared scheduled navigation ', messageFrameId printString
					category: self class.
				].
			method = 'Page.frameStoppedLoading' ifTrue:
				[
				messageFrameId := params at: 'frameId'.
				loading remove: messageFrameId
					ifAbsent: [ StringSignal emit: 'unable to remove ', messageFrameId printString ].
				stoppedLoading add: messageFrameId.
				ChromeStringSignal emit: 'stop loading ', messageFrameId printString
					category: self class.
				].
			loading isEmpty ifTrue: 
				[
				loadedTimestamp := DateAndTime now.
				self ensureIdleTimer ]
			ifFalse:
				[ loadedTimestamp := nil ].
			ChromeStringSignal emit: 'Updated loadedTimestamp: ', loadedTimestamp printString
				category: self class.
		].
