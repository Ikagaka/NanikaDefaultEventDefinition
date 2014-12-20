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
NanikaEventDefinition.changed =
	request:
		id: 'OnGhostChanged'
		headers:
			from_sakuraname: 0
			from_script: 1
			from_name: 2
			from_path: 3
			shell_name: 7
NanikaEventDefinition.called =
	request:
		id: 'OnGhostCalled'
		headers:
			from_sakuraname: 0
			from_script: 1
			from_name: 2
			from_path: 3
			shell_name: 7
