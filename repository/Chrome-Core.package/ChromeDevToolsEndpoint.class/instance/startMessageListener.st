private
startMessageListener
	"Start the receiver's message receiving and processing process."
	| messageString |

	messageListener := [ [ self isOpen ] whileTrue: 
		[ [ [ messageString := self webSocket readMessage.
			messageQueue nextPut: messageString.
			ChromeReceivedMessageSignal emitMessage: messageString ]
			on: ConnectionTimedOut
			do: [ :ex | 
					ChromeStringSignal emit: 'Message Listener, normal timeout' category: 'Message Listener'.
					ex retry ] ]
				"Sockets signal SocketError instead of PrimitiveFailed in Pharo 11, 
				PrimitiveFailed should be removed from here when Pharo 10 compatibility is dropped"
				on: (ExceptionSet withClassNames: #(#ConnectionClosed #PrimitiveFailed #SocketError))
				do: [ :ex | 
					ChromeStringSignal emit: 'Message Listener, connection closed' category: 'Message Listener'.
					self disconnected ] ].
			ChromeStringSignal emit: 'Message Listener: exiting' category: 'Message Listener'.
	] forkAt: Processor userSchedulingPriority named: 'CDT Endpoint ', self id asString.