async processing
queueEntry

	^(BlTktUnresponsiveCommand new 
		valuable: [ self updateSourceCode ];
		name: 'NodeJS Source Code Update';
		yourself) asBlTktLoggingCommand asBlTktSingleCommand
			identifier: self.
