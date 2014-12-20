NanikaEventDefinition.communicate =
	request:
		id: 'OnCommunicate'
		headers: (nanika, args) ->
			headers =
				Reference0: args.sender
				Reference1: args.content
			if args.args?
				for value, index in args.args
					headers["Reference#{index + 2}"] = value
			return headers
