mouseevents = [
	{type: 'mousedown', id: 'OnMouseDown'}
	{type: 'mousedownex', id: 'OnMouseDownEx'}
	{type: 'mouseup', id: 'OnMouseUp'}
	{type: 'mouseupex', id: 'OnMouseUpEx'}
	{type: 'mouseclick', id: 'OnMouseClick'}
	{type: 'mouseclickex', id: 'OnMouseClickEx'}
	{type: 'mousedblclick', id: 'OnMouseDoubleClick'}
	{type: 'mousedblclickex', id: 'OnMouseDoubleClickEx'}
	{type: 'mousedragstart', id: 'OnMouseDragStart'}
	{type: 'mousedragend', id: 'OnMouseDragEnd'}
	{type: 'mousewheel', id: 'OnMouseWheel'}
	{type: 'mousemove', id: 'OnMouseMove'}
	{type: 'mousehover', id: 'OnMouseHover'}
	{type: 'mouseenterall', id: 'OnMouseEnterAll'}
	{type: 'mouseleaveall', id: 'OnMouseLeaveAll'}
	{type: 'mouseenter', id: 'OnMouseEnter'}
	{type: 'mouseleave', id: 'OnMouseLeave'}
]
mouseevents_header =
	offsetX: 0
	offsetY: 1
	wheel: 2
	scope: 3
	region: 4
	button: 5
	type: 6
for event in mouseevents
	NanikaEventDefinition[event.type] =
		request:
			id: event.id
			headers: mouseevents_header
