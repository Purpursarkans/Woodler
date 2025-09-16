@tool
extends MultiMeshInstance3D

@export var rt_update : bool = false
@export_tool_button("update") var update = _update

@export var dist : float = 0.5 : 
	set(value):
		dist = value
		_update()
@export var x : int = 1 : 
	set(value):
		x = value
		_update()
@export var y : int = 1 : 
	set(value):
		y = value
		_update()
@export var fix_scale_y : float = 0.87 : 
	set(value):
		fix_scale_y = value
		_update()
@export var mesh_resource : Mesh

func _ready() -> void:
	_update()

func _update():
	
	if multimesh == null:
		multimesh = MultiMesh.new()
		multimesh.transform_format = MultiMesh.TRANSFORM_3D
	
	multimesh.mesh = mesh_resource
	
	multimesh.instance_count = x * y
	var cube = 0
	for i in range(x):
		for j in range(y):
				multimesh.set_instance_transform(cube, Transform3D(Basis(), Vector3(i * dist, j * dist * fix_scale_y, 0)))
				cube+=1
