extends PanelContainer

@export var SubjectInfo: SubjectResource

@onready var SubjectName: RichTextLabel = $Subject/SubjextData/HBoxContainer/SubjectName/SubjectName
@onready var SubjectSurname: RichTextLabel = $Subject/SubjextData/HBoxContainer/SubjectName/SubjectSurname
@onready var SubjectJobTitle: RichTextLabel = $Subject/SubjextData/HBoxContainer/SubjectJobTitle
@onready var SubjectMoralityMeter: HBoxContainer = $Subject/SubjextData/HBoxContainer/SubjectMoralityMeter
@onready var AngelMoralityStatBar: ProgressBar = $Subject/SubjextData/HBoxContainer/SubjectMoralityMeter/AngelicStatBar
@onready var DevilMoralityStatBar: ProgressBar = $Subject/SubjextData/HBoxContainer/SubjectMoralityMeter/DevilishStatBar
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
@onready var EnergyBar: ProgressBar = $Subject/SubjectEnergy/EnergyBar
@onready var EnergyIconCell1: TextureRect = $Subject/SubjectEnergy/EnergyBar/EnergyCells/cell/energy_icon
@onready var EnergyIconCell2: TextureRect = $Subject/SubjectEnergy/EnergyBar/EnergyCells/cell2/energy_icon
@onready var EnergyIconCell3: TextureRect = $Subject/SubjectEnergy/EnergyBar/EnergyCells/cell3/energy_icon
@onready var DepartmentBadge: TextureRect = $Frame/DepartmentBadge
@onready var SubjectContainer: Control = $Subject

@export var ailments_resource: AilmentPool = preload("res://scripts/resources/AilmentsPool.tres")

const MAX_ENERGY := 3
const MAX_STAT_VALUE := 100
const AILMENT_THRESHOLD := 0.2
const INVALID_STAT_VALUE := -999999
var current_energy := MAX_ENERGY

const ANGEL_BADGE := preload("res://assets/UI/AngelIcon.png")
const DEVIL_BADGE := preload("res://assets/UI/DevilIcon.png")

func load_in_subject(resource_in: SubjectResource):
	SubjectName.text = resource_in.name
	SubjectSurname.text = resource_in.surnam
	SubjectJobTitle.text = resource_in.Job
	AngelMoralityStatBar.value = resource_in.AngelMorality
	DevilMoralityStatBar.value = resource_in.DevilMorality

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
	if DepartmentBadge:
		DepartmentBadge.texture = null
	if SubjectContainer:
		SubjectContainer.visible = false
	if SubjectInfo != null:
		load_in_subject(SubjectInfo)
		reset_energy()
	return

func set_subject(resource_in: SubjectResource) -> void:
	SubjectInfo = resource_in
	if SubjectInfo == null:
		return
	if SubjectContainer:
		SubjectContainer.visible = true
	load_in_subject(SubjectInfo)
	reset_energy()

func set_department_badge(department: String) -> void:
	if DepartmentBadge == null:
		return
	var dept_lower := department.to_lower()
	if dept_lower == "angel":
		DepartmentBadge.texture = ANGEL_BADGE
	elif dept_lower == "devil":
		DepartmentBadge.texture = DEVIL_BADGE

func clear_subject_info() -> void:
	SubjectInfo = null
	if DepartmentBadge:
		DepartmentBadge.texture = null
	if SubjectContainer:
		SubjectContainer.visible = false
	SubjectName.text = ""
	SubjectSurname.text = ""
	SubjectJobTitle.text = ""
	AngelMoralityStatBar.value = 0
	DevilMoralityStatBar.value = 0
	SubjectIntellectStatLabel.text = ""
	SubjectAestheticStatLabel.text = ""
	SubjectHelthStatLabel.text = ""
	SubjectVolatilityStatLabel.text = ""
	SubjectAffectStatLabel.text = ""
	SubjectNatureLabel.text = ""
	SubjectIntellectStatBar.value = 0
	SubjectAestheticStatBar.value = 0
	SubjectHealthStatBar.value = 0
	SubjectVolatilityStatBar.value = 0
	SubjectAffectStatBar.value = 0
	SubjectNatureStatBar.value = 0

func reset_energy() -> void:
	current_energy = MAX_ENERGY
	_apply_energy_state()

func try_consume_energy() -> bool:
	if current_energy <= 0:
		return false
	current_energy -= 1
	_apply_energy_state()
	return true

func _apply_energy_state() -> void:
	EnergyBar.value = current_energy
	EnergyIconCell3.visible = current_energy >= 3
	EnergyIconCell2.visible = current_energy >= 2
	EnergyIconCell1.visible = current_energy >= 1

func apply_stat_cost(stat_name: String, cost: int) -> String:
	if SubjectInfo == null:
		return ""
	match stat_name:
		"Intellect":
			SubjectInfo.Intellect -= cost
			SubjectIntellectStatLabel.text = str(SubjectInfo.Intellect)
			SubjectIntellectStatBar.value = SubjectInfo.Intellect
		"Aesthetic":
			SubjectInfo.Aesthetic -= cost
			SubjectAestheticStatLabel.text = str(SubjectInfo.Aesthetic)
			SubjectAestheticStatBar.value = SubjectInfo.Aesthetic
		"Health":
			SubjectInfo.Health -= cost
			SubjectHelthStatLabel.text = str(SubjectInfo.Health)
			SubjectHealthStatBar.value = SubjectInfo.Health
		"Volatility":
			SubjectInfo.Volatility -= cost
			SubjectVolatilityStatLabel.text = _volatility_keyword(SubjectInfo.Volatility)
			SubjectVolatilityStatBar.value = SubjectInfo.Volatility
		"Affect":
			SubjectInfo.Affect -= cost
			SubjectAffectStatLabel.text = _affect_keyword(SubjectInfo.Affect)
			SubjectAffectStatBar.value = SubjectInfo.Affect
		_:
			return ""

	return _maybe_apply_ailment(stat_name)

func _maybe_apply_ailment(stat_name: String) -> String:
	if SubjectInfo == null or ailments_resource == null:
		return ""
	if SubjectInfo.Ailment != "":
		return ""
	var current_value := _get_stat_value(stat_name)
	if current_value == INVALID_STAT_VALUE:
		return ""
	var threshold_value := int(MAX_STAT_VALUE * AILMENT_THRESHOLD)
	if current_value >= threshold_value:
		return ""
	var pools: Dictionary = ailments_resource.ailment_pools
	var options: Array = pools.get(stat_name, []) as Array
	if options.is_empty():
		return ""
	var ailment := options.pick_random() as String
	SubjectInfo.Ailment = ailment
	return ailment

func _get_stat_value(stat_name: String) -> int:
	match stat_name:
		"Intellect":
			return SubjectInfo.Intellect
		"Aesthetic":
			return SubjectInfo.Aesthetic
		"Health":
			return SubjectInfo.Health
		"Volatility":
			return SubjectInfo.Volatility
		"Affect":
			return SubjectInfo.Affect
		"Nature":
			return SubjectInfo.Nature
	return INVALID_STAT_VALUE
