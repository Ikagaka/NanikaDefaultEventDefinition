NanikaEventDefinition.firstboot =
	request:
		id: 'OnFirstBoot'
		headers:
			vanish_count: 0
NanikaEventDefinition.boot =
	request:
		id: 'OnBoot'
		headers:
			shell_name: 0
			halted:
				name: 6
				value: (value, nanika, request_args, optionals) -> if value then 'halt' else ''
			halted_ghost:
				name: 7
				value: (value, nanika, request_args, optionals) -> if value? then value else ''
NanikaEventDefinition.calling =
	request:
		id: 'OnGhostCalling'
		headers:
			other_sakuraname: 0
			reason: 1
			other_name: 2
			other_path: 3
NanikaEventDefinition.call_complete =
	request:
		id: 'OnGhostCallComplete'
		headers:
			other_sakuraname: 0
			other_script: 1
			other_name: 2
			other_shell_name: 7
NanikaEventDefinition.other_booted =
	request:
		id: 'OnOtherGhostBooted'
		headers:
			other_sakuraname: 0
			other_script: 1
			other_name: 2
			other_shell_name: 7
NanikaEventDefinition.other_changed =
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
NanikaEventDefinition.other_closed =
	request:
		id: 'OnOtherGhostClosed'
		headers:
			other_sakuraname: 0
			other_script: 1
			other_name: 2
			other_shell_name: 7
