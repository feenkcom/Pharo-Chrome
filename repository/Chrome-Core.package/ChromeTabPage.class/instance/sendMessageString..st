private
sendMessageString: aMessageString

	ChromeStringSignal emit: aMessageString category: 'sendMessage:'.
	^self webSocket sendMessage: aMessageString