private
startMessageListener
	"Start the page's message receiving and processing process."
	| messageString |

	messageListener := [ [ self isOpen ] whileTrue: 
		[ [ [ messageString := self webSocket readMessage.
			messageQueue add: messageString.
			ChromeStringSignal emit: 'Received message: ', messageString category: 'Message Listener'.
			self processReceivedMessage: messageString]
			on: ConnectionTimedOut
			do: [ :ex | 
					ChromeStringSignal emit: 'Message Listener, normal timeout' category: 'Message Listener'.
					ex retry ] ]
				on: ConnectionClosed 
				do: [ :ex | 
					ChromeStringSignal emit: 'Message Listener, connection closed' category: 'Message Listener'.
					socketState := #closed.
					webSocket := nil ] ].
			ChromeStringSignal emit: 'Message Listener: exiting' category: 'Message Listener'.
	] forkAt: 20 named: 'ChromeTabPage ', id asString.