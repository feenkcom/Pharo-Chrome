instance creation
openWindowOn: anURL
	"Answer the ChromeNode of the requested page"

	| chrome page rootNode |

	chrome := self new.
	chrome
		headless: false;
		open.
	page := chrome firstTab.
	rootNode := page get: anURL.
	^rootNode