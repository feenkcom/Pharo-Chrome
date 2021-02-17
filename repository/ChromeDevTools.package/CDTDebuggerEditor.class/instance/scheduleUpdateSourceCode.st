private
scheduleUpdateSourceCode

	self enqueueTask: (BlTaskAction new action: [ self updateSourceCode ]).
