Collect coverage data for the current isolate, and resets execution counters. Precise code
coverage needs to have started.

Returns:
result: Coverage data for the current isolate.
	Array of: $ref(ScriptCoverage) 
timestamp: Monotonically increasing time (in seconds) when the coverage update was taken in the backend.
