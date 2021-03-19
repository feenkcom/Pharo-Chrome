ChromeDevToolsDefinitionImporter reads js_protocol.json from https://github.com/ChromeDevTools/devtools-protocol/blob/master/json/js_protocol.json and generates the equivalent Pharo classes.

The code is generated using the Refactoring Browser.  To generate the model: 

[[[ 
ChromeDevToolsDefinitionImporter new 
	run; 
	browseChanges
]]]


If a clean regeneration is required, all generated classes can be removed with:

[[[ 
ChromeDevToolsDefinitionImporter new removeGeneratedClasses
]]]
