class_name LeisureActivitiesPools

extends Resource

@export var activities_pool: Array[String] = [
	"Physical", "Creative", "Cognitive", "Media", "Relaxation",
]

@export var activity_stats: Dictionary = {
	"Physical": ["Health", "Nature", "Volatility"],
	"Creative": ["Aesthetic", "Affect", "Intellect"],
	"Cognitive": ["Intellect", "Volatility", "Affect"],
	"Media": ["Affect", "Aesthetic", "Volatility"],
	"Relaxation": ["Nature", "Health", "Aesthetic"],
}
