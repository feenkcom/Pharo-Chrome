ChromeDevTools implements the protocol for communicating with servers such as Chromium and node.js.

For an introduction to the protocol, please see https://github.com/aslushnikov/getting-started-with-cdp/blob/master/README.md.


!!Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
!!Internal Representation and Key Implementation Points.

!!!Instance Variables
	host:		<Object>
	process:		<Object>
	settings:		<Object>
	webSocket:		<Object>


!!!Implementation Points

GoogleChrome originally kept an OrderedCollection of processors.  As messages arrived, each message would be sent to all the processors to process, inside a mutex.  This is in the process of being replaced by Announcements.