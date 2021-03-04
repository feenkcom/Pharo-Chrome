accessing
isSuccess
	"Answer whether the command completed successfully.
	Only valid after the command has completed."
	
	^process exitStatusInterpreter isSuccess