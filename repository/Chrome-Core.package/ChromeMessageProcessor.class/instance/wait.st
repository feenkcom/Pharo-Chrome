messages
wait
	"Wait for the receivers message to be processed"

	| timedout |

	timedout := semaphore waitTimeoutSeconds: maxWaitSeconds.
	timedout ifTrue: 
		[ ChromeLoadTimeout new 
				processor: self;
				signal: 'Exceeded ', maxWaitSeconds asString, ' seconds' ].