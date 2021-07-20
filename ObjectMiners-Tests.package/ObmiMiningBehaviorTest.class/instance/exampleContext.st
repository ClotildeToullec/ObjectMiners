helpers
exampleContext

	^ Context
		  sender: [ 1 + 1 ] asContext
		  receiver: nil
		  method: Object >> #at:
		  arguments: #( 10 )