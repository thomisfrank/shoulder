extends PanelContainer

@export var SubjectInfo: SubjectResource

@onready var SubjectName: RichTextLabel = $Subject/SubjextData/HBoxContainer/SubjectName/SubjectName
@onready var SubjectSurname: RichTextLabel = $Subject/SubjextData/HBoxContainer/SubjectName/SubjectSurname
@onready var SubjectJobTitle: RichTextLabel = $Subject/SubjextData/HBoxContainer/SubjectJobTitle
@onready var SubjectIntellectStatLabel: RichTextLabel = $Subject/SubjextData/SubjectStats/HardStats/IntellectStat/StatBar/StatLabel
@onready var SubjectAestheticStatLabel: RichTextLabel = $Subject/SubjextData/SubjectStats/HardStats/AestheticStat/StatBar/StatLabel
@onready var SubjectHelthStatLabel: RichTextLabel = $Subject/SubjextData/SubjectStats/HardStats/HealthStat/StatBar/StatLabel
@onready var SubjectVolatilityStatLabel: RichTextLabel = $Subject/SubjextData/SubjectStats/SoftStats/VolatilityStat/StatBar/StatLabel
@onready var SubjectAffectStatLabel: RichTextLabel = $Subject/SubjextData/SubjectStats/SoftStats/AffectStat/StatBar/StatLabel
@onready var SubjectNatureLabel: RichTextLabel = $Subject/SubjextData/SubjectStats/SoftStats/NatureStat/StatBar/StatLabel
@onready var SubjectIntellectStatBar: ProgressBar = $Subject/SubjextData/SubjectStats/HardStats/IntellectStat/StatBar
@onready var SubjectAestheticStatBar: ProgressBar = $Subject/SubjextData/SubjectStats/HardStats/AestheticStat/StatBar
@onready var SubjectHealthStatBar: ProgressBar = $Subject/SubjextData/SubjectStats/HardStats/HealthStat/StatBar
@onready var SubjectVolatilityStatBar: ProgressBar = $Subject/SubjextData/SubjectStats/SoftStats/VolatilityStat/StatBar
@onready var SubjectAffectStatBar: ProgressBar = $Subject/SubjextData/SubjectStats/SoftStats/AffectStat/StatBar
@onready var SubjectNatureStatBar: ProgressBar = $Subject/SubjextData/SubjectStats/SoftStats/NatureStat/StatBar

func load_in_subject(resource_in: SubjectResource):
	SubjectName.text = resource_in.name
	SubjectSurname.text = resource_in.surnam
	SubjectJobTitle.text = resource_in.Job

	SubjectIntellectStatLabel.text = str(resource_in.Intellect)
	SubjectAestheticStatLabel.text = str(resource_in.Aesthetic)
	SubjectHelthStatLabel.text = str(resource_in.Health)
	SubjectVolatilityStatLabel.text = _volatility_keyword(resource_in.Volatility)
	SubjectAffectStatLabel.text = _affect_keyword(resource_in.Affect)
	SubjectNatureLabel.text = _nature_keyword(resource_in.Nature)

	SubjectIntellectStatBar.value = resource_in.Intellect
	SubjectAestheticStatBar.value = resource_in.Aesthetic
	SubjectHealthStatBar.value = resource_in.Health
	SubjectVolatilityStatBar.value = resource_in.Volatility
	SubjectAffectStatBar.value = resource_in.Affect
	SubjectNatureStatBar.value = resource_in.Nature

func _volatility_keyword(value: int) -> String:
	if value > 31:
		return "Easy Going"
	if value > 20:
		return "Spontaneous"
	return "Chaotic"

func _affect_keyword(value: int) -> String:
	if value > 31:
		return "Happy"
	if value > 20:
		return "Fine"
	return "Depressed"

func _nature_keyword(value: int) -> String:
	if value > 31:
		return "Social"
	if value > 20:
		return "Semi-social"
	return "Anti-Social"

func _ready() -> void:
	var generator := get_node_or_null("/root/SubjectGenerator")
	if generator:
		SubjectInfo = generator.generate_subject()
	if SubjectInfo == null:
		push_error("SubjectInfo is null in header.gd")
		return
	load_in_subject(SubjectInfo)
	return
