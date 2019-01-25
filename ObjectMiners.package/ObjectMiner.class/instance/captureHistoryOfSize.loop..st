api-capture
captureHistoryOfSize: size loop: loop
	"size: size of the history after which the history stops recording objects, 0 by default (unlimited).
loop: boolean, specifies if the history can loop over its records once its limit has been reached"

	historySize := size.
	historyLoop := loop