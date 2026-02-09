extends Node

@export var name_data: SubjectNamesPool = preload("res://scripts/resources/SubjectNamesPool.tres")
@export var job_info: SubjectJobsPool = preload("res://scripts/resources/SubjectJobsPool.tres")
@export var ailment_info: AilmentPool = preload("res://scripts/resources/AilmentsPool.tres")
@export var job_messages: JobMessagesPool = preload("res://scripts/resources/JobMessagesPool.tres")

const JOB_HAZARD_RANK := { "Football Player": 9, "Carpenter": 8, "Farmer": 8, "Plumber": 8,
	"Basketball Player": 8, "Soccer Player": 8, "Chef": 7,	"Electrician": 7,	"Dancer": 7, "Baseball Player": 7,
	"Nurse": 6,	"Groundskeeper": 6,	"Wait Staff": 5, "Painter": 5,	"Doctor": 4, "Dentist": 4, "Stylist": 4,
	"Pet Walker": 4, "Grocer": 4, "News Reporter": 4,	"Educator": 3,	"Lawyer": 3,	"Audio Engineer": 3,
	"Pianist": 3,	"Flautist": 3,	"Opera Singer": 3,	"Student": 2,	"Accountant": 2,	"Investor": 2,
	"Engineer": 2,	"News Anchor": 2,	"Therapist": 2,	"Unemployed": 1,}


func _ready():
	generate_subject()
	return
	


func generate_subject() -> SubjectResource:
	var subject := SubjectResource.new()
	generate_name(subject)
	generate_stats(subject)
	generate_job(subject)
	set_health_from_job(subject)
	set_ailment(subject)
	return subject


func generate_name(subject: SubjectResource) -> void:
	if name_data:
		if not name_data.name_pool.is_empty():
			subject.name = name_data.name_pool.pick_random()
		if not name_data.surname_pool.is_empty():
			subject.surnam = name_data.surname_pool.pick_random()
	else:
		push_error("Name data resource is missing! Check the Inspector.")
	print("Successfully generated: ", subject.name, " ", subject.surnam, " ")
	return
	

func generate_stats(subject: SubjectResource) -> void:
	subject.Intellect = randi_range(-50, 100)
	subject.Aesthetic = randi_range(-50, 100)
	subject.Volatility = randi_range(0, 50)
	subject.Affect = randi_range(0, 50)
	subject.Nature = randi_range(0, 50)
	print("Subject Stats: ", "Intellect:  ", subject.Intellect, " ",
	"Aesthetic:  ", subject.Aesthetic, " ")
	set_stat_keywords(subject)
	return
	

func set_stat_keywords(subject: SubjectResource) -> void:
	print("Temperment: ")
	if subject.Volatility > 31:
		print("Easy Going")
	elif subject.Volatility > 20:
		print("Spontaneous")
	else:
		print("Chaotic")

	if subject.Affect > 31:
		print("Happy")
	elif subject.Affect > 20:
		print("Fine")
	else:
		print("Depressed")

	if subject.Nature > 31:
		print("Social")
	elif subject.Nature > 20:
		print("Semi-social")
	else:
		print("Anti-Social")
		

func generate_job(subject: SubjectResource) -> void:
	if job_info:
		if not job_info.job_pool.is_empty():
			subject.Job = job_info.job_pool.pick_random()
	else:
		push_error("Job data resource is missing! Check the Inspector.")
	print("Works as: ", subject.Job, " ")	
	return

func set_health_from_job(subject: SubjectResource) -> void:
	var rank: int = int(JOB_HAZARD_RANK.get(subject.Job, 5))
	var max_health: int = 90 - (rank * 6)
	var min_health: int = 90 - (rank * 10)
	subject.Health = randi_range(min_health, max_health)
	return


func set_ailment(subject: SubjectResource) -> void:
	if subject.Health < 0:
		print("Is Dead")
	elif subject.Health < 10:
		subject.Ailment = ailment_info.job_pool.slice(0, 7).pick_random()
		print("Has: ", subject.Ailment, " ")
	elif subject.Health < 20:
		subject.Ailment = ailment_info.job_pool.slice(7, 12).pick_random()
		print("Has: ", subject.Ailment, " ")
	elif subject.Health < 30:
		subject.Ailment = ailment_info.job_pool.slice(12, 17).pick_random()
		print("Has: ", subject.Ailment, " ")
	elif subject.Health < 40:
		subject.Ailment = ailment_info.job_pool.slice(17, 22).pick_random()
		print("Has: ", subject.Ailment, " ")
	else:
		print("Is Healthy")
	return
