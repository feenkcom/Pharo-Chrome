examples
exampleNavigation
    <noTest>
	<gtExample>
	| chrome page logger |

	logger := MemoryLogger new.
	logger start.
	chrome := GoogleChrome new
            debugOn;
				debugSession;
            open;
            yourself.
	page := chrome tabPages first.
	page enablePage.
	page enableDOM.
	page navigateTo: 'http://pharo.org'.
	page getDocument.
	page getMissingChildren.
	page updateTitle.
	chrome closeAndExit.
	logger stop.
	^{ chrome. page. logger. }
