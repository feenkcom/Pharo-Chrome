hooks - children
onAddedToSceneGraph
	"Receive a notification whenever the debugger is paused - meaning that the view should be updated"

	super onAddedToSceneGraph.
	self debugger announcer 
		when: CDTDebuggerPaused
		send: #scheduleUpdateSourceCode 
		to: self.
	self scheduleUpdateSourceCode.