messages
wait
	"Wait for the receivers message to be processed"

	semaphore waitTimeoutSeconds: maxWaitSeconds
		onCompletion: nil
		onTimeout: [ ChromeLoadTimeout new 
				processor: self;
				signal: 'Exceeded ', maxWaitSeconds asString, ' seconds' ].