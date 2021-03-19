Sets JavaScript breakpoint at given location specified either by URL or URL regex. Once this
command is issued, all existing parsed scripts will have breakpoints resolved and returned in
`locations` property. Further matching script parsing will result in subsequent
`breakpointResolved` events issued. This logical breakpoint will survive page reloads.

Returns:
breakpointId: Id of the created breakpoint for further reference.
locations: List of the locations this breakpoint resolved into upon addition.
	Array of: $ref(Location) 
