Interaction
replayRecord: index
	"index: index of the record in the history of captured objects (Integer) to use as a replay for next executions"

	collector replayCollectedItem: (self getRecord: index)