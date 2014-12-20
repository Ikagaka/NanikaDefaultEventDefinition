NanikaEventDefinition.ownerghostname =
	request:
		method: 'NOTIFY'
		submethod: 'OwnerGhostName'
		id: 'ownerghostname'
		headers:
			name: 0
NanikaEventDefinition.otherghostname =
	request:
		method: 'NOTIFY'
		submethod: 'OtherGhostName'
		id: 'otherghostname'
		headers: (nanika, args) ->
			headers = {}
			for name, index in args.names
				headers["Reference#{index}"] = name
			return headers
NanikaEventDefinition.basewareversion =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'basewareversion'
		headers:
			version: 0
			name: 1
NanikaEventDefinition.notifyosinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyOSInfo'
		headers: -> throw new Error 'not implemented'
NanikaEventDefinition.notifybrowserinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyBrowserInfo'
		headers:
			useragent: 0
			browser_name: 1
			browser_version: 2
			engine_name: 11
			engine_version: 12
			os_name: 21
			os_version: 22
			device_model: 33
			device_type: 34
			device_vendor: 35
			cpu_arch: 46
NanikaEventDefinition.notifyfontinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyFontInfo'
		headers: (nanika, args) ->
			headers = {}
			for name, index in args.names
				headers["Reference#{index}"] = name
			return headers
NanikaEventDefinition.notifyselfinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifySelfInfo'
		headers:
			name: 0
			sakura_name: 1
			kero_name: 2
			shell_name: 3
			shell_path: 4
			balloon_name: 5
			balloon_path: 6
NanikaEventDefinition.notifyballooninfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyBalloonInfo'
		headers:
			balloon_name: 0
			balloon_path: 1
			surfaces:
				name: 2
				value: (elements) ->
					values = []
					if elements?
						for element, index in elements
							values.push element.character_id + ':' + element.surfaces.join ','
					return values.join ' '
NanikaEventDefinition.notifyshellinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyShellInfo'
		headers:
			shell_name: 0
			shell_path: 1
			surfaces:
				name: 2
				value: (surfaces) ->
					if surfaces?
						return surfaces.join ','
NanikaEventDefinition.notifyuserinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyUserInfo'
		headers:
			nickname: 0
			fullname: 1
			birthday:
				name: 2
				value: (value) -> "#{value.getFullYear()},#{value.getMonth() + 1},#{value.getDate()}"
				sex: 3
NanikaEventDefinition.notifydressupinfo =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'OnNotifyDressupInfo'
		headers: (nanika, args) ->
			headers = {}
			for cloth, index in args.cloths
				headers["Reference#{index}"] = [cloth.id, cloth.category_name, cloth.parts_name, cloth.options, cloth.effective, cloth.thumbnail_path].join '\x01'
			return headers
NanikaEventDefinition.ghostpathlist =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'ghostpathlist'
		headers: (nanika, args) ->
			headers = {}
			for path, index in args.paths
				headers["Reference#{index}"] = path
			return headers
NanikaEventDefinition.balloonpathlist =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'balloonpathlist'
		headers: (nanika, args) ->
			headers = {}
			for path, index in args.paths
				headers["Reference#{index}"] = path
			return headers
NanikaEventDefinition.installedghostname =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'installedghostname'
		headers: (nanika, args) ->
			headers = {}
			for name, index in args.names
				headers["Reference#{index}"] = name
			return headers
NanikaEventDefinition.installedballoonname =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'installedballoonname'
		headers: (nanika, args) ->
			headers = {}
			for name, index in args.names
				headers["Reference#{index}"] = name
			return headers
NanikaEventDefinition.installedshellname =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'installedshellname'
		headers: (nanika, args) ->
			headers = {}
			for name, index in args.names
				headers["Reference#{index}"] = name
			return headers
NanikaEventDefinition.rateofusegraph =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'rateofusegraph'
		headers: (nanika, args) ->
			headers = {}
			for ghost, index in args.ghosts
				headers["Reference#{index}"] = [ghost.name, ghost.sakuraname, ghost.keroname, ghost.bootcount, ghost.active_minutes, ghost.active_percent, ghost.state].join '\x01'
			return headers
NanikaEventDefinition.uniqueid =
	request:
		method: 'NOTIFY'
		submethod: null
		id: 'uniqueid'
		headers:
			uniqueid: 0
