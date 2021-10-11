operations - page
captureScreenshot
	"Capture a screenshot of the current page at full resolution"
	| base64 json layout message |

	layout := self getLayoutMetrics.
	message := ChromePageMessageFactory new 
		captureScreenshotX: 0 y: 0 
		width: ((layout at: 'contentSize') at: 'width')
		height: ((layout at: 'contentSize') at: 'height')
		scale: 1.0.
	json := self sendMessage: message.
	base64 := (json at: 'result') at: 'data'.
	^ Form fromBinaryStream: base64 base64Decoded readStream.