private - accessing
resultValue: resultHolder
	"Answer the value contained in the supplied result dictoinary"

	^ ((resultHolder at: #result) at: #result) at: #value