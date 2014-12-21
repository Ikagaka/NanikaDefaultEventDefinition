NanikaEventDefinition.calling =
	request:
		id: 'OnGhostCalling'
		headers:
			other_sakuraname: 0
			reason: 1
			other_name: 2
			other_path: 3
NanikaEventDefinition.callcomplete =
	request:
		id: 'OnGhostCallComplete'
		headers:
			other_sakuraname: 0
			other_script: 1
			other_name: 2
			other_shell_name: 7
NanikaEventDefinition.otherbooted =
	request:
		id: 'OnOtherGhostBooted'
		headers:
			other_sakuraname: 0
			other_script: 1
			other_name: 2
			other_shell_name: 7
NanikaEventDefinition.otherchanged =
	request:
		id: 'OnOtherGhostChanged'
		headers:
			from_sakuraname: 0
			to_sakuraname: 1
			from_script: 2
			to_script: 3
			from_name: 4
			to_name: 5
			from_shell_name: 14
			to_shell_name: 15
NanikaEventDefinition.otherclosed =
	request:
		id: 'OnOtherGhostClosed'
		headers:
			other_sakuraname: 0
			other_script: 1
			other_name: 2
			other_shell_name: 7
