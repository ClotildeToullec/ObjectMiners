cleanup
uninstallAll
	<script>
	self registry do:[:miner| miner uninstall].
	registry := nil