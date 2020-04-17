commands
captureScreenshotX: x y: y width: width height: height scale: scale
	"See *https://chromedevtools.github.io/devtools-protocol/1-3/Page/#method-captureScreenshot*"

	^ Dictionary new 
		at: #method put: #'Page.captureScreenshot';
		at: #params put: (Dictionary new 
			at: #clip put: (Dictionary new
				at: #x put: x;
				at: #y put: y;
				at: #width put: width;
				at: #height put: height;
				at: #scale put: scale;
				yourself);
			yourself);
		yourself