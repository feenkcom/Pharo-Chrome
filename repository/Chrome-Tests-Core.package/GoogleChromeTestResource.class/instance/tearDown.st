running
tearDown

	| osProcess |

	page1html delete.
	osProcess := browser chromeProcess.
	browser closeAndExit.
	[ osProcess isComplete ] whileFalse:
		[ (Delay forMilliseconds: 200) wait ].