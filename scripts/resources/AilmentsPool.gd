class_name AilmentPool

extends Resource


@export var ailment_level: Array = [1, 2, 3, 4]

@export var ailment_pools: Dictionary = {
	"Intellect": [
		"Brain Fog",
		"Confusion",
		"Memory Lapse",
		"Poor Concentration",
		"Decision Fatigue",
		"Mental Exhaustion",
		"Overstimulation",
		"Short Attention Span",
		"Intrusive Thoughts",
		"Sleep Deprivation"
	],
	"Aesthetic": [
		"Creative Block",
		"Loss of Inspiration",
		"Overcritical Mindset",
		"Perfection Paralysis",
		"Impostor Feelings",
		"Visual Fatigue",
		"Burnout From Revision",
		"Artistic Frustration",
		"Style Confusion",
		"Low Creative Energy"
	],
	"Health": [
		"Cancer", "a stroke", "a heart attack", "TB", "Liver Disease", "A Genetic Disorder", 
		"an accident", "Pneumonia", "a burn", "a cut", "Asthma", "Chronic Pain", 
		"Influenza", "A Broken limb", "A Rhino virus", "A Migraine", "Acute Stress", 
		"A Toothache", "A Headache", "Vocal Strain", "Joint Stiffness", "Carpal Tunnel"
	],
	"Volatility": [
		"Irritability",
		"Mood Swings",
		"Short Temper",
		"Nervous Agitation",
		"Restlessness",
		"Racing Thoughts",
		"Emotional Whiplash",
		"Jittery Nerves",
		"Low Patience",
		"Stress Spikes"
	],
	"Nature": [
		"Social Withdrawal",
		"Isolation",
		"Avoidance",
		"Detachment",
		"Low Social Energy",
		"Difficulty Trusting",
		"Closed-Off Mood",
		"Reluctant to Engage",
		"Social Exhaustion",
		"Disconnection"
	], 
	"Affect": [
		"Low Mood",
		"Hopelessness",
		"Anhedonia",
		"Emotional Numbness",
		"Sadness",
		"Low Motivation",
		"Feeling Down",
		"Empty Feeling",
		"Loss of Interest",
		"Flat Affect"
	]
}
