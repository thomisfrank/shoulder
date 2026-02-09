class_name SubjectResource

extends Resource

@export_group("SubjectData")
@export var name: String
@export var surnam: String

@export_group("SubjectStats")
@export var Intellect: int
@export var Aesthetic: int
@export var Health: int
@export var Volatility: int
@export var Affect: int
@export var Nature: int

@export_group("SubjectState")
@export var Job: String
@export var Ailment: String