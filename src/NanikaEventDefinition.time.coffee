bool = (value, nanika, request_args, optionals) -> if value then 1 else 0
NanikaEventDefinition.secondchange =
	request:
		id: 'OnSecondChange'
		headers:
			os_uptime: 0
			mikire:
				name: 1
				value: bool
			overlapped:
				name: 2
				value: bool
			cantalk:
				name: 3
				value: bool
NanikaEventDefinition.minutechange =
	request:
		id: 'OnMinuteChange'
		headers:
			os_uptime: 0
			mikire:
				name: 1
				value: bool
			overlapped:
				name: 2
				value: bool
			cantalk:
				name: 3
				value: bool
