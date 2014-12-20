NanikaEventDefinition.any =
	request: (nanika, args, optionals) ->
		headers = null
		if args.headers?
			if args.headers instanceof Array
				headers = {}
				for value, index in args.headers
					headers["Reference#{index}"] = value
			else if args.headers instanceof Object
				headers = {}
				for name, value of args.headers
					if ! isNaN(name)
						headers["Reference#{name}"] = value
					else
						headers[name] = value
			else
				throw new Error "event 'any' invalid headers"
		method: args.method
		submethod: args.submethod
		id: args.id
		headers: headers
