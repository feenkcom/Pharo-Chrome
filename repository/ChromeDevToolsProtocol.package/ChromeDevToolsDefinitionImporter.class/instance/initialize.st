initialization
initialize 

	super initialize.
	jsFile := '/home/alistair/git/ChromeDevTools/devtools-protocol/json/js_protocol.json' asFileReference.
	browserFile := '/home/alistair/git/ChromeDevTools/devtools-protocol/json/browser_protocol.json' asFileReference.
	classNamePrefix := 'CDTP'.
	overwrite := true.