baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec postLoadDoIt: #postload:package:.
			spec
				baseline: 'Collectors'
				with:
					[ spec repository: 'github://StevenCostiou/Collectors:2-Optimizations' ].
			spec blessing: #baseline.
			spec repository: 'github://ClotildeToullec/ObjectMiners'.
			spec description: 'ObjectMiners debugger implementation'.
			spec package: 'ObjectMiners' ]