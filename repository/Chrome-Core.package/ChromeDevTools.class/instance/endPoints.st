accessing
endPoints
	"Answer information about each of the endpoints (webSocketDebuggerUrls) that exist in the server"
	| remotes |

	remotes := STON fromString: (ZnEasy get: host, '/json') contents.
	^(remotes select: [ :each | each includesKey: #webSocketDebuggerUrl])
		collect: [:each | self endPointClass fromDictionary: each ].