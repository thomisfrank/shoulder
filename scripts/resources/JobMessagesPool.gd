extends Resource
class_name JobMessagesPool

@export var messages: Dictionary = {
	"Audio Engineer": [
		"{name} spent the morning mixing a muddy bassline.",
		"{name} had to respond to a noise complaint.",
		"{name} recorded a 200 piece band."
	],
	"Student": [
		"{name} accidentally fell asleep during a three-hour lecture.",
		"The library was packed, so {name} studied in the hallway.",
		"{name} stayed up all night finishing a 10-page research paper."
	],
	"Unemployed": [
		"{name} updated their resume for the fifth time this week.",
		"{name} spent the afternoon watching vintage reruns on TV.",
		"A recruiter reached out, but it turned out to be a scam. {name} lost $85."
	],
	"Educator": [
		"{name} wrapped up a shift working as Educator.",
		"{name} had a busy day working as Educator.",
		"{name} learned something new while working as Educator."
	],
	"Wait Staff": [
		"{name} wrapped up a shift working as Wait Staff.",
		"{name} had a busy day working as Wait Staff.",
		"{name} learned something new while working as Wait Staff."
	],
	"Doctor": [
		"{name} wrapped up a shift working as Doctor.",
		"{name} had a busy day working as Doctor.",
		"{name} learned something new while working as Doctor."
	],
	"Nurse": [
		"{name} wrapped up a shift working as Nurse.",
		"{name} had a busy day working as Nurse.",
		"{name} learned something new while working as Nurse."
	],
	"Lawyer": [
		"{name} wrapped up a shift working as Lawyer.",
		"{name} had a busy day working as Lawyer.",
		"{name} learned something new while working as Lawyer."
	],
	"Stylist": [
		"{name} wrapped up a shift working as Stylist.",
		"{name} had a busy day working as Stylist.",
		"{name} learned something new while working as Stylist."
	],
	"Accountant": [
		"{name} wrapped up a shift working as Accountant.",
		"{name} had a busy day working as Accountant.",
		"{name} learned something new while working as Accountant."
	],
	"Investor": [
		"{name} wrapped up a shift working as Investor.",
		"{name} had a busy day working as Investor.",
		"{name} learned something new while working as Investor."
	],
	"Pet Walker": [
		"{name} wrapped up a shift working as Pet Walker.",
		"{name} had a busy day working as Pet Walker.",
		"{name} learned something new while working as Pet Walker."
	],
	"Chef": [
		"{name} wrapped up a shift working as Chef.",
		"{name} had a busy day working as Chef.",
		"{name} learned something new while working as Chef."
	],
	"Therapist": [
		"{name} wrapped up a shift working as Therapist.",
		"{name} had a busy day working as Therapist.",
		"{name} learned something new while working as Therapist."
	],
	"Carpenter": [
		"{name} wrapped up a shift working as Carpenter.",
		"{name} had a busy day working as Carpenter.",
		"{name} learned something new while working as Carpenter."
	],
	"Farmer": [
		"{name} wrapped up a shift working as Farmer.",
		"{name} had a busy day working as Farmer.",
		"{name} learned something new while working as Farmer."
	],
	"Electrician": [
		"{name} wrapped up a shift working as Electrician.",
		"{name} had a busy day working as Electrician.",
		"{name} learned something new while working as Electrician."
	],
	"Plumber": [
		"{name} wrapped up a shift working as Plumber.",
		"{name} had a busy day working as Plumber.",
		"{name} learned something new while working as Plumber."
	],
	"Grocer": [
		"{name} wrapped up a shift working as Grocer.",
		"{name} had a busy day working as Grocer.",
		"{name} learned something new while working as Grocer."
	],
	"Engineer": [
		"{name} wrapped up a shift working as Engineer.",
		"{name} had a busy day working as Engineer.",
		"{name} learned something new while working as Engineer."
	],
	"Dentist": [
		"{name} wrapped up a shift working as Dentist.",
		"{name} had a busy day working as Dentist.",
		"{name} learned something new while working as Dentist."
	],
	"News Anchor": [
		"{name} wrapped up a shift working as News Anchor.",
		"{name} had a busy day working as News Anchor.",
		"{name} learned something new while working as News Anchor."
	],
	"News Reporter": [
		"{name} wrapped up a shift working as News Reporter.",
		"{name} had a busy day working as News Reporter.",
		"{name} learned something new while working as News Reporter."
	],
	"Dancer": [
		"{name} wrapped up a shift working as Dancer.",
		"{name} had a busy day working as Dancer.",
		"{name} learned something new while working as Dancer."
	],
	"Basketball Player": [
		"{name} wrapped up a shift working as Basketball Player.",
		"{name} had a busy day working as Basketball Player.",
		"{name} learned something new while working as Basketball Player."
	],
	"Baseball Player": [
		"{name} wrapped up a shift working as Baseball Player.",
		"{name} had a busy day working as Baseball Player.",
		"{name} learned something new while working as Baseball Player."
	],
	"Football Player": [
		"{name} wrapped up a shift working as Football Player.",
		"{name} had a busy day working as Football Player.",
		"{name} learned something new while working as Football Player."
	],
	"Soccer Player": [
		"{name} wrapped up a shift working as Soccer Player.",
		"{name} had a busy day working as Soccer Player.",
		"{name} learned something new while working as Soccer Player."
	],
	"Painter": [
		"{name} wrapped up a shift working as Painter.",
		"{name} had a busy day working as Painter.",
		"{name} learned something new while working as Painter."
	],
	"Pianist": [
		"{name} wrapped up a shift working as Pianist.",
		"{name} had a busy day working as Pianist.",
		"{name} learned something new while working as Pianist."
	],
	"Flautist": [
		"{name} wrapped up a shift working as Flautist.",
		"{name} had a busy day working as Flautist.",
		"{name} learned something new while working as Flautist."
	],
	"Opera Singer": [
		"{name} wrapped up a shift working as Opera Singer.",
		"{name} had a busy day working as Opera Singer.",
		"{name} learned something new while working as Opera Singer."
	],
	"Groundskeeper": [
		"{name} wrapped up a shift working as Groundskeeper.",
		"{name} had a busy day working as Groundskeeper.",
		"{name} learned something new while working as Groundskeeper."
	],
}

func get_message(subject: SubjectResource) -> String:
	var options: Array = messages.get(subject.Job, [])
	if options.is_empty():
		return ""
	return (options.pick_random() as String).format({"name": subject.name})
