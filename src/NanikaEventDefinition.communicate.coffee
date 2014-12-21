NanikaEventDefinition.communicate =
	request:
		id: 'OnCommunicate'
		headers: (nanika, args) ->
			headers =
				Reference0: args.sender
				Reference1: args.content
			if args.args?
				for value, index in args.args
					if value?
						headers["Reference#{index + 2}"] = value
			if args.age?
				headers.Age = args.age
			if args.surface?
				headers.Surface = args.surface
			return headers
