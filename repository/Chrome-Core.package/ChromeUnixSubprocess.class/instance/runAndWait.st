running
runAndWait
	"Run the command and wait for completion"

	semaphore := Semaphore new.
	self runProcess.
	semaphore wait.
	(errorBlock isNotNil and: [ self isSuccess not ])
		ifTrue: [ errorBlock value: self ]