NanikaEventDefinition.close =
	request:
		id: 'OnClose'
		headers:
			reason: 0
NanikaEventDefinition.closeall =
	request:
		id: 'OnCloseAll'
		headers:
			reason: 0
NanikaEventDefinition.changing =
	request:
		id: 'OnGhostChanging'
		headers:
			to_sakuraname: 0
			reason: 1
			to_name: 2
			to_path: 3
