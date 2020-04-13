private
scheduleText: aText lineNumber: anInteger
	"Schedule the receiver's text to be set to aText and scroll to anInteger in the UI process"

	self enqueueTask: (BlTaskAction new action:
		[ self text: aText.
		self scrollToPosition: anInteger ])