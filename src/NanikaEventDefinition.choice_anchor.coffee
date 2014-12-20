choiceex_headers = (nanika, args) ->
	headers =
		Reference0: args.label
		Reference1: args.id
	if args.args?
		for value, index in args.args
			headers["Reference#{index + 2}"] = value
	return headers
NanikaEventDefinition.choiceselect =
	request:
		id: 'OnChoiceSelect'
		headers:
			id: 0
NanikaEventDefinition.choiceselectex =
	request:
		id: 'OnChoiceSelectEx'
		headers: choiceex_headers
NanikaEventDefinition.choicehover =
	request:
		id: 'OnChoiceHover'
		headers: choiceex_headers
NanikaEventDefinition.choiceenter =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnChoiceEnter'
		headers: choiceex_headers
NanikaEventDefinition.choicetimeout =
	request:
		id: 'OnChoiceTimeout'
		headers:
			script: 0
NanikaEventDefinition.anchorselect =
	request:
		id: 'OnAnchorSelect'
		headers:
			id: 0
NanikaEventDefinition.anchorselectex =
	request:
		id: 'OnAnchorSelectEx'
		headers: choiceex_headers
