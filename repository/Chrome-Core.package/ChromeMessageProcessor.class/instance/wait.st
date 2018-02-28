messages
wait
	"Wait for the receivers message to be processed"

	| timedout |

	timedout := semaphore waitTimeoutSeconds: maxWaitSeconds.
	timedout ifTrue: 
		[ TimedOut signal: self class name ].