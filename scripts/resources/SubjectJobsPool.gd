class_name SubjectJobsPool

extends Resource

@export var job_pool: Array[String] = [
	"Student", "Educator", "Wait Staff", "Doctor", "Nurse", "Lawyer", "Stylist", 
	"Accountant", "Investor", "Pet Walker", "Chef", "Therapist", "Carpenter", 
	"Farmer", "Electrician", "Plumber", "Grocer", "Unemployed", "Engineer", 
	"Audio Engineer", "Dentist", "News Anchor", "News Reporter", "Dancer", 
	"Basketball Player", "Baseball Player", "Football Player", "Soccer Player", 
	"Painter", "Pianist", "Flautist", "Opera Singer", "Groundskeeper"
]

@export var job_stat: Dictionary = {
	"Accountant": "Intellect",
	"Audio Engineer": "Intellect",
	"Baseball Player": "Health",
	"Basketball Player": "Health",
	"Carpenter": "Nature",
	"Chef": "Volatility",
	"Dancer": "Aesthetic",
	"Dentist": "Intellect",
	"Doctor": "Intellect",
	"Educator": "Intellect",
	"Electrician": "Nature",
	"Engineer": "Intellect",
	"Farmer": "Nature",
	"Flautist": "Aesthetic",
	"Football Player": "Health",
	"Grocer": "Volatility",
	"Groundskeeper": "Nature",
	"Investor": "Intellect",
	"Lawyer": "Intellect",
	"News Anchor": "Affect",
	"News Reporter": "Affect",
	"Nurse": "Intellect",
	"Opera Singer": "Aesthetic",
	"Painter": "Aesthetic",
	"Pet Walker": "Nature",
	"Pianist": "Aesthetic",
	"Plumber": "Nature",
	"Soccer Player": "Health",
	"Student": "Intellect",
	"Stylist": "Aesthetic",
	"Therapist": "Affect",
	"Unemployed": "Volatility",
	"Wait Staff": "Health",
}
