running
setUp
	super setUp.
	
	miningBehavior := ObmiMiningBehavior new.
	collector := Collector new.
	collector installer: ValueCollectInstaller basicNew.
	reifications :=  {#name. #object} asOrderedCollection.
	collector metaController: ObmiDummyMetaController new.
	rawData := {'test'. Object new } asOrderedCollection .
	