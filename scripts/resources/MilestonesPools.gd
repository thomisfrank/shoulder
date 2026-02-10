extends Resource
class_name MilestonesPools

@export_group("MilestoneStats")
@export var Intellect: int
@export var Aesthetic: int
@export var Health: int
@export var Volatility: int
@export var Affect: int
@export var Nature: int


@export var job_milestones_pool: Dictionary = {
	"Audio Engineer": [
		{"id": "MS-001", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-002", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-003", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Student": [
		{"id": "MS-004", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-005", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-006", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Unemployed": [
		{"id": "MS-007", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-008", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-009", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Educator": [
		{"id": "MS-010", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-011", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-012", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Wait Staff": [
		{"id": "MS-013", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-014", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-015", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Doctor": [
		{"id": "MS-016", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-017", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-018", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Nurse": [
		{"id": "MS-019", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-020", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-021", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Lawyer": [
		{"id": "MS-022", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-023", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-024", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Stylist": [
		{"id": "MS-025", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-026", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-027", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Accountant": [
		{"id": "MS-028", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-029", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-030", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Investor": [
		{"id": "MS-031", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-032", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-033", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Pet Walker": [
		{"id": "MS-034", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-035", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-036", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Chef": [
		{"id": "MS-037", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-038", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-039", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Therapist": [
		{"id": "MS-040", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-041", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-042", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Carpenter": [
		{"id": "MS-043", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-044", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-045", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Farmer": [
		{"id": "MS-046", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-047", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-048", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Electrician": [
		{"id": "MS-049", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-050", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-051", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Plumber": [
		{"id": "MS-052", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-053", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-054", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Grocer": [
		{"id": "MS-055", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-056", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-057", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Engineer": [
		{"id": "MS-058", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-059", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-060", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Dentist": [
		{"id": "MS-061", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-062", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-063", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"News Anchor": [
		{"id": "MS-064", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-065", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-066", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"News Reporter": [
		{"id": "MS-067", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-068", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-069", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Dancer": [
		{"id": "MS-070", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-071", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-072", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Basketball Player": [
		{"id": "MS-073", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-074", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-075", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Baseball Player": [
		{"id": "MS-076", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-077", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-078", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Football Player": [
		{"id": "MS-079", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-080", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-081", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Soccer Player": [
		{"id": "MS-082", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-083", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-084", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Painter": [
		{"id": "MS-085", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-086", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-087", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Pianist": [
		{"id": "MS-088", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-089", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-090", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Flautist": [
		{"id": "MS-091", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-092", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-093", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Opera Singer": [
		{"id": "MS-094", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-095", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-096", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
	"Groundskeeper": [
		{"id": "MS-097", "text": "{name} ran into a situation at work that could go a few different ways. The details are unclear and time is limited. {name} has to decide what to do next."},
		{"id": "MS-098", "text": "{name} noticed a small issue that might turn into a bigger problem. Speaking up could slow things down. {name} must decide whether to intervene."},
		{"id": "MS-099", "text": "{name} witnessed a tense moment and is not sure who should step in. Doing nothing could make it worse. {name} has to choose a response."},
	],
}

@export var activity_milestones_pool: Dictionary = {
	"Physical": [
		{"id": "MS-100", "text": "{name} discovered a litter of puppies on the side of the road during a walk. There is no one else around. {name} has to decide what to do."},
		{"id": "MS-101", "text": "{name} came across a fallen cyclist who says they are fine. The path is empty and help is not nearby. {name} must choose whether to stay or continue."},
		{"id": "MS-102", "text": "{name} noticed smoke rising from a trail ahead. It might be a small fire or just a camp. {name} has to decide how to respond."},
		{"id": "MS-103", "text": "{name} found a wallet on the ground after a run. No one is in sight. {name} has to decide what to do next."},
		{"id": "MS-104", "text": "{name} heard a cry for help from behind a closed door at the gym. It could be nothing or something serious. {name} has to choose a response."},
	],
	"Creative": [
		{"id": "MS-105", "text": "{name} was asked to finish a piece that belongs to someone else. It could help them or cross a line. {name} has to decide what to do."},
		{"id": "MS-106", "text": "{name} noticed a mistake in a shared project just before it goes public. Fixing it might upset others. {name} must decide whether to intervene."},
		{"id": "MS-107", "text": "{name} found a sketchbook left behind in a studio. The work is personal and unfinished. {name} has to choose how to handle it."},
		{"id": "MS-108", "text": "{name} was offered credit for work they only partly did. Accepting would be easy. {name} has to decide what to do next."},
		{"id": "MS-109", "text": "{name} saw a chance to reuse someone else's idea to meet a deadline. The line is blurry. {name} has to choose a response."},
	],
	"Cognitive": [
		{"id": "MS-110", "text": "{name} found a confusing error in a report that could change the conclusion. It is not clear who should fix it. {name} has to decide what to do."},
		{"id": "MS-111", "text": "{name} discovered a key detail in their research that contradicts the plan. Sharing it could derail the project. {name} must decide whether to intervene."},
		{"id": "MS-112", "text": "{name} noticed a classmate struggling with a problem they already solved. Helping could risk their own time. {name} has to choose a response."},
		{"id": "MS-113", "text": "{name} came across sensitive notes left open in a study area. It is unclear if they should read more. {name} has to decide what to do next."},
		{"id": "MS-114", "text": "{name} realized a shortcut would save hours but might be misleading. The deadline is close. {name} has to decide how to proceed."},
	],
	"Media": [
		{"id": "MS-115", "text": "{name} saw a breaking story online that might be false. Sharing it would get attention. {name} has to decide what to do."},
		{"id": "MS-116", "text": "{name} noticed a clip trending that looks edited out of context. It is unclear if people know. {name} must decide whether to intervene."},
		{"id": "MS-117", "text": "{name} found a private message accidentally posted in a public thread. It could cause trouble. {name} has to choose a response."},
		{"id": "MS-118", "text": "{name} was asked to leave a review they do not believe. It would help a friend. {name} has to decide what to do next."},
		{"id": "MS-119", "text": "{name} discovered a spoiler in a forum right before a friend watches the show. It is unclear if they should warn them. {name} has to choose a response."},
	],
	"Relaxation": [
		{"id": "MS-120", "text": "{name} found a lost pet wandering near a quiet park. No owner is nearby. {name} has to decide what to do."},
		{"id": "MS-121", "text": "{name} noticed a neighbor looking distressed on their porch. It could be nothing. {name} must decide whether to check in."},
		{"id": "MS-122", "text": "{name} came across a small fire pit still smoldering at the campsite. It might be safe or might spread. {name} has to choose a response."},
		{"id": "MS-123", "text": "{name} found a journal left open in a shared space. It feels personal. {name} has to decide what to do next."},
		{"id": "MS-124", "text": "{name} heard an argument through an open window while resting outside. It is unclear if help is needed. {name} has to choose a response."},
	],
}

func get_job_milestone(subject: SubjectResource) -> String:
	var options: Array = job_milestones_pool.get(subject.Job, [])
	if options.is_empty():
		return ""
	var choice = options.pick_random()
	if typeof(choice) == TYPE_DICTIONARY:
		var text: String = (choice as Dictionary).get("text", "")
		return text.format({"name": subject.name})
	return (choice as String).format({"name": subject.name})

func get_activity_milestone(activity: String, subject: SubjectResource) -> String:
	var options: Array = activity_milestones_pool.get(activity, [])
	if options.is_empty():
		return ""
	var choice = options.pick_random()
	if typeof(choice) == TYPE_DICTIONARY:
		var text: String = (choice as Dictionary).get("text", "")
		return text.format({"name": subject.name})
	return (choice as String).format({"name": subject.name})

func get_job_milestone_with_id(subject: SubjectResource) -> Dictionary:
	var options: Array = job_milestones_pool.get(subject.Job, [])
	if options.is_empty():
		return {"id": "", "text": ""}
	var choice = options.pick_random()
	if typeof(choice) == TYPE_DICTIONARY:
		var text: String = (choice as Dictionary).get("text", "")
		var id: String = (choice as Dictionary).get("id", "")
		return {"id": id, "text": text.format({"name": subject.name})}
	return {"id": "", "text": (choice as String).format({"name": subject.name})}

func get_activity_milestone_with_id(activity: String, subject: SubjectResource) -> Dictionary:
	var options: Array = activity_milestones_pool.get(activity, [])
	if options.is_empty():
		return {"id": "", "text": ""}
	var choice = options.pick_random()
	if typeof(choice) == TYPE_DICTIONARY:
		var text: String = (choice as Dictionary).get("text", "")
		var id: String = (choice as Dictionary).get("id", "")
		return {"id": id, "text": text.format({"name": subject.name})}
	return {"id": "", "text": (choice as String).format({"name": subject.name})}

@export var angel_guidance_by_id: Dictionary = {
	"MS-001": [
		"Be transparent and share what you know. Ask for input before deciding. Then follow through.",
		"Ask for input before deciding. Then follow through. Be transparent and share what you know.",
		"Then follow through. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-002": [
		"Choose the safest option for others. Ask for input before deciding. Then follow through.",
		"Document what happened. Then follow through. Be transparent and share what you know.",
		"And keep people safe. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-003": [
		"Act with empathy and patience. Ask for input before deciding. Then follow through.",
		"Seek help from someone responsible. Then follow through. Be transparent and share what you know.",
		"Then own the outcome. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-004": [
		"Take responsibility and stay calm. Ask for input before deciding. Then follow through.",
		"De-escalate the situation. Then follow through. Be transparent and share what you know.",
		"And keep the tone respectful. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-005": [
		"Do the fair thing even if it costs you. Ask for input before deciding. Then follow through.",
		"Check on others first. Then follow through. Be transparent and share what you know.",
		"Then do the right thing. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-006": [
		"Keep everyone informed as you act. Ask for input before deciding. Then follow through.",
		"Clarify the facts. Then follow through. Be transparent and share what you know.",
		"And avoid making it worse. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-007": [
		"Protect those who might be affected. Ask for input before deciding. Then follow through.",
		"Offer assistance quietly. Then follow through. Be transparent and share what you know.",
		"Then ask for backup. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-008": [
		"Look for a solution that helps the group. Ask for input before deciding. Then follow through.",
		"Take a measured next step. Then follow through. Be transparent and share what you know.",
		"And reduce harm where you can. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-009": [
		"Pause and think before you move. Ask for input before deciding. Then follow through.",
		"Follow the safest process. Then follow through. Be transparent and share what you know.",
		"Then report it properly. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-010": [
		"Ask for guidance from a trusted person. Ask for input before deciding. Then follow through.",
		"Choose honesty over speed. Then follow through. Be transparent and share what you know.",
		"And give credit where due. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-011": [
		"Prioritize care over convenience. Ask for input before deciding. Then follow through.",
		"Keep the focus on safety. Then follow through. Be transparent and share what you know.",
		"Then stay consistent. Be transparent and share what you know. Ask for input before deciding.",
	],
	"MS-012": [
		"Be transparent and share what you know. Document what happened. Then follow through.",
		"Ask for input before deciding. And keep people safe. Be transparent and share what you know.",
		"Then follow through. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-013": [
		"Choose the safest option for others. Document what happened. Then follow through.",
		"Document what happened. And keep people safe. Be transparent and share what you know.",
		"And keep people safe. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-014": [
		"Act with empathy and patience. Document what happened. Then follow through.",
		"Seek help from someone responsible. And keep people safe. Be transparent and share what you know.",
		"Then own the outcome. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-015": [
		"Take responsibility and stay calm. Document what happened. Then follow through.",
		"De-escalate the situation. And keep people safe. Be transparent and share what you know.",
		"And keep the tone respectful. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-016": [
		"Do the fair thing even if it costs you. Document what happened. Then follow through.",
		"Check on others first. And keep people safe. Be transparent and share what you know.",
		"Then do the right thing. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-017": [
		"Keep everyone informed as you act. Document what happened. Then follow through.",
		"Clarify the facts. And keep people safe. Be transparent and share what you know.",
		"And avoid making it worse. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-018": [
		"Protect those who might be affected. Document what happened. Then follow through.",
		"Offer assistance quietly. And keep people safe. Be transparent and share what you know.",
		"Then ask for backup. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-019": [
		"Look for a solution that helps the group. Document what happened. Then follow through.",
		"Take a measured next step. And keep people safe. Be transparent and share what you know.",
		"And reduce harm where you can. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-020": [
		"Pause and think before you move. Document what happened. Then follow through.",
		"Follow the safest process. And keep people safe. Be transparent and share what you know.",
		"Then report it properly. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-021": [
		"Ask for guidance from a trusted person. Document what happened. Then follow through.",
		"Choose honesty over speed. And keep people safe. Be transparent and share what you know.",
		"And give credit where due. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-022": [
		"Prioritize care over convenience. Document what happened. Then follow through.",
		"Keep the focus on safety. And keep people safe. Be transparent and share what you know.",
		"Then stay consistent. Choose the safest option for others. Ask for input before deciding.",
	],
	"MS-023": [
		"Be transparent and share what you know. Seek help from someone responsible. Then follow through.",
		"Ask for input before deciding. Then own the outcome. Be transparent and share what you know.",
		"Then follow through. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-024": [
		"Choose the safest option for others. Seek help from someone responsible. Then follow through.",
		"Document what happened. Then own the outcome. Be transparent and share what you know.",
		"And keep people safe. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-025": [
		"Act with empathy and patience. Seek help from someone responsible. Then follow through.",
		"Seek help from someone responsible. Then own the outcome. Be transparent and share what you know.",
		"Then own the outcome. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-026": [
		"Take responsibility and stay calm. Seek help from someone responsible. Then follow through.",
		"De-escalate the situation. Then own the outcome. Be transparent and share what you know.",
		"And keep the tone respectful. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-027": [
		"Do the fair thing even if it costs you. Seek help from someone responsible. Then follow through.",
		"Check on others first. Then own the outcome. Be transparent and share what you know.",
		"Then do the right thing. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-028": [
		"Keep everyone informed as you act. Seek help from someone responsible. Then follow through.",
		"Clarify the facts. Then own the outcome. Be transparent and share what you know.",
		"And avoid making it worse. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-029": [
		"Protect those who might be affected. Seek help from someone responsible. Then follow through.",
		"Offer assistance quietly. Then own the outcome. Be transparent and share what you know.",
		"Then ask for backup. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-030": [
		"Look for a solution that helps the group. Seek help from someone responsible. Then follow through.",
		"Take a measured next step. Then own the outcome. Be transparent and share what you know.",
		"And reduce harm where you can. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-031": [
		"Pause and think before you move. Seek help from someone responsible. Then follow through.",
		"Follow the safest process. Then own the outcome. Be transparent and share what you know.",
		"Then report it properly. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-032": [
		"Ask for guidance from a trusted person. Seek help from someone responsible. Then follow through.",
		"Choose honesty over speed. Then own the outcome. Be transparent and share what you know.",
		"And give credit where due. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-033": [
		"Prioritize care over convenience. Seek help from someone responsible. Then follow through.",
		"Keep the focus on safety. Then own the outcome. Be transparent and share what you know.",
		"Then stay consistent. Act with empathy and patience. Ask for input before deciding.",
	],
	"MS-034": [
		"Be transparent and share what you know. De-escalate the situation. Then follow through.",
		"Ask for input before deciding. And keep the tone respectful. Be transparent and share what you know.",
		"Then follow through. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-035": [
		"Choose the safest option for others. De-escalate the situation. Then follow through.",
		"Document what happened. And keep the tone respectful. Be transparent and share what you know.",
		"And keep people safe. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-036": [
		"Act with empathy and patience. De-escalate the situation. Then follow through.",
		"Seek help from someone responsible. And keep the tone respectful. Be transparent and share what you know.",
		"Then own the outcome. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-037": [
		"Take responsibility and stay calm. De-escalate the situation. Then follow through.",
		"De-escalate the situation. And keep the tone respectful. Be transparent and share what you know.",
		"And keep the tone respectful. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-038": [
		"Do the fair thing even if it costs you. De-escalate the situation. Then follow through.",
		"Check on others first. And keep the tone respectful. Be transparent and share what you know.",
		"Then do the right thing. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-039": [
		"Keep everyone informed as you act. De-escalate the situation. Then follow through.",
		"Clarify the facts. And keep the tone respectful. Be transparent and share what you know.",
		"And avoid making it worse. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-040": [
		"Protect those who might be affected. De-escalate the situation. Then follow through.",
		"Offer assistance quietly. And keep the tone respectful. Be transparent and share what you know.",
		"Then ask for backup. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-041": [
		"Look for a solution that helps the group. De-escalate the situation. Then follow through.",
		"Take a measured next step. And keep the tone respectful. Be transparent and share what you know.",
		"And reduce harm where you can. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-042": [
		"Pause and think before you move. De-escalate the situation. Then follow through.",
		"Follow the safest process. And keep the tone respectful. Be transparent and share what you know.",
		"Then report it properly. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-043": [
		"Ask for guidance from a trusted person. De-escalate the situation. Then follow through.",
		"Choose honesty over speed. And keep the tone respectful. Be transparent and share what you know.",
		"And give credit where due. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-044": [
		"Prioritize care over convenience. De-escalate the situation. Then follow through.",
		"Keep the focus on safety. And keep the tone respectful. Be transparent and share what you know.",
		"Then stay consistent. Take responsibility and stay calm. Ask for input before deciding.",
	],
	"MS-045": [
		"Be transparent and share what you know. Check on others first. Then follow through.",
		"Ask for input before deciding. Then do the right thing. Be transparent and share what you know.",
		"Then follow through. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-046": [
		"Choose the safest option for others. Check on others first. Then follow through.",
		"Document what happened. Then do the right thing. Be transparent and share what you know.",
		"And keep people safe. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-047": [
		"Act with empathy and patience. Check on others first. Then follow through.",
		"Seek help from someone responsible. Then do the right thing. Be transparent and share what you know.",
		"Then own the outcome. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-048": [
		"Take responsibility and stay calm. Check on others first. Then follow through.",
		"De-escalate the situation. Then do the right thing. Be transparent and share what you know.",
		"And keep the tone respectful. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-049": [
		"Do the fair thing even if it costs you. Check on others first. Then follow through.",
		"Check on others first. Then do the right thing. Be transparent and share what you know.",
		"Then do the right thing. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-050": [
		"Keep everyone informed as you act. Check on others first. Then follow through.",
		"Clarify the facts. Then do the right thing. Be transparent and share what you know.",
		"And avoid making it worse. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-051": [
		"Protect those who might be affected. Check on others first. Then follow through.",
		"Offer assistance quietly. Then do the right thing. Be transparent and share what you know.",
		"Then ask for backup. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-052": [
		"Look for a solution that helps the group. Check on others first. Then follow through.",
		"Take a measured next step. Then do the right thing. Be transparent and share what you know.",
		"And reduce harm where you can. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-053": [
		"Pause and think before you move. Check on others first. Then follow through.",
		"Follow the safest process. Then do the right thing. Be transparent and share what you know.",
		"Then report it properly. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-054": [
		"Ask for guidance from a trusted person. Check on others first. Then follow through.",
		"Choose honesty over speed. Then do the right thing. Be transparent and share what you know.",
		"And give credit where due. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-055": [
		"Prioritize care over convenience. Check on others first. Then follow through.",
		"Keep the focus on safety. Then do the right thing. Be transparent and share what you know.",
		"Then stay consistent. Do the fair thing even if it costs you. Ask for input before deciding.",
	],
	"MS-056": [
		"Be transparent and share what you know. Clarify the facts. Then follow through.",
		"Ask for input before deciding. And avoid making it worse. Be transparent and share what you know.",
		"Then follow through. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-057": [
		"Choose the safest option for others. Clarify the facts. Then follow through.",
		"Document what happened. And avoid making it worse. Be transparent and share what you know.",
		"And keep people safe. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-058": [
		"Act with empathy and patience. Clarify the facts. Then follow through.",
		"Seek help from someone responsible. And avoid making it worse. Be transparent and share what you know.",
		"Then own the outcome. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-059": [
		"Take responsibility and stay calm. Clarify the facts. Then follow through.",
		"De-escalate the situation. And avoid making it worse. Be transparent and share what you know.",
		"And keep the tone respectful. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-060": [
		"Do the fair thing even if it costs you. Clarify the facts. Then follow through.",
		"Check on others first. And avoid making it worse. Be transparent and share what you know.",
		"Then do the right thing. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-061": [
		"Keep everyone informed as you act. Clarify the facts. Then follow through.",
		"Clarify the facts. And avoid making it worse. Be transparent and share what you know.",
		"And avoid making it worse. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-062": [
		"Protect those who might be affected. Clarify the facts. Then follow through.",
		"Offer assistance quietly. And avoid making it worse. Be transparent and share what you know.",
		"Then ask for backup. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-063": [
		"Look for a solution that helps the group. Clarify the facts. Then follow through.",
		"Take a measured next step. And avoid making it worse. Be transparent and share what you know.",
		"And reduce harm where you can. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-064": [
		"Pause and think before you move. Clarify the facts. Then follow through.",
		"Follow the safest process. And avoid making it worse. Be transparent and share what you know.",
		"Then report it properly. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-065": [
		"Ask for guidance from a trusted person. Clarify the facts. Then follow through.",
		"Choose honesty over speed. And avoid making it worse. Be transparent and share what you know.",
		"And give credit where due. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-066": [
		"Prioritize care over convenience. Clarify the facts. Then follow through.",
		"Keep the focus on safety. And avoid making it worse. Be transparent and share what you know.",
		"Then stay consistent. Keep everyone informed as you act. Ask for input before deciding.",
	],
	"MS-067": [
		"Be transparent and share what you know. Offer assistance quietly. Then follow through.",
		"Ask for input before deciding. Then ask for backup. Be transparent and share what you know.",
		"Then follow through. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-068": [
		"Choose the safest option for others. Offer assistance quietly. Then follow through.",
		"Document what happened. Then ask for backup. Be transparent and share what you know.",
		"And keep people safe. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-069": [
		"Act with empathy and patience. Offer assistance quietly. Then follow through.",
		"Seek help from someone responsible. Then ask for backup. Be transparent and share what you know.",
		"Then own the outcome. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-070": [
		"Take responsibility and stay calm. Offer assistance quietly. Then follow through.",
		"De-escalate the situation. Then ask for backup. Be transparent and share what you know.",
		"And keep the tone respectful. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-071": [
		"Do the fair thing even if it costs you. Offer assistance quietly. Then follow through.",
		"Check on others first. Then ask for backup. Be transparent and share what you know.",
		"Then do the right thing. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-072": [
		"Keep everyone informed as you act. Offer assistance quietly. Then follow through.",
		"Clarify the facts. Then ask for backup. Be transparent and share what you know.",
		"And avoid making it worse. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-073": [
		"Protect those who might be affected. Offer assistance quietly. Then follow through.",
		"Offer assistance quietly. Then ask for backup. Be transparent and share what you know.",
		"Then ask for backup. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-074": [
		"Look for a solution that helps the group. Offer assistance quietly. Then follow through.",
		"Take a measured next step. Then ask for backup. Be transparent and share what you know.",
		"And reduce harm where you can. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-075": [
		"Pause and think before you move. Offer assistance quietly. Then follow through.",
		"Follow the safest process. Then ask for backup. Be transparent and share what you know.",
		"Then report it properly. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-076": [
		"Ask for guidance from a trusted person. Offer assistance quietly. Then follow through.",
		"Choose honesty over speed. Then ask for backup. Be transparent and share what you know.",
		"And give credit where due. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-077": [
		"Prioritize care over convenience. Offer assistance quietly. Then follow through.",
		"Keep the focus on safety. Then ask for backup. Be transparent and share what you know.",
		"Then stay consistent. Protect those who might be affected. Ask for input before deciding.",
	],
	"MS-078": [
		"Be transparent and share what you know. Take a measured next step. Then follow through.",
		"Ask for input before deciding. And reduce harm where you can. Be transparent and share what you know.",
		"Then follow through. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-079": [
		"Choose the safest option for others. Take a measured next step. Then follow through.",
		"Document what happened. And reduce harm where you can. Be transparent and share what you know.",
		"And keep people safe. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-080": [
		"Act with empathy and patience. Take a measured next step. Then follow through.",
		"Seek help from someone responsible. And reduce harm where you can. Be transparent and share what you know.",
		"Then own the outcome. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-081": [
		"Take responsibility and stay calm. Take a measured next step. Then follow through.",
		"De-escalate the situation. And reduce harm where you can. Be transparent and share what you know.",
		"And keep the tone respectful. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-082": [
		"Do the fair thing even if it costs you. Take a measured next step. Then follow through.",
		"Check on others first. And reduce harm where you can. Be transparent and share what you know.",
		"Then do the right thing. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-083": [
		"Keep everyone informed as you act. Take a measured next step. Then follow through.",
		"Clarify the facts. And reduce harm where you can. Be transparent and share what you know.",
		"And avoid making it worse. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-084": [
		"Protect those who might be affected. Take a measured next step. Then follow through.",
		"Offer assistance quietly. And reduce harm where you can. Be transparent and share what you know.",
		"Then ask for backup. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-085": [
		"Look for a solution that helps the group. Take a measured next step. Then follow through.",
		"Take a measured next step. And reduce harm where you can. Be transparent and share what you know.",
		"And reduce harm where you can. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-086": [
		"Pause and think before you move. Take a measured next step. Then follow through.",
		"Follow the safest process. And reduce harm where you can. Be transparent and share what you know.",
		"Then report it properly. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-087": [
		"Ask for guidance from a trusted person. Take a measured next step. Then follow through.",
		"Choose honesty over speed. And reduce harm where you can. Be transparent and share what you know.",
		"And give credit where due. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-088": [
		"Prioritize care over convenience. Take a measured next step. Then follow through.",
		"Keep the focus on safety. And reduce harm where you can. Be transparent and share what you know.",
		"Then stay consistent. Look for a solution that helps the group. Ask for input before deciding.",
	],
	"MS-089": [
		"Be transparent and share what you know. Follow the safest process. Then follow through.",
		"Ask for input before deciding. Then report it properly. Be transparent and share what you know.",
		"Then follow through. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-090": [
		"Choose the safest option for others. Follow the safest process. Then follow through.",
		"Document what happened. Then report it properly. Be transparent and share what you know.",
		"And keep people safe. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-091": [
		"Act with empathy and patience. Follow the safest process. Then follow through.",
		"Seek help from someone responsible. Then report it properly. Be transparent and share what you know.",
		"Then own the outcome. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-092": [
		"Take responsibility and stay calm. Follow the safest process. Then follow through.",
		"De-escalate the situation. Then report it properly. Be transparent and share what you know.",
		"And keep the tone respectful. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-093": [
		"Do the fair thing even if it costs you. Follow the safest process. Then follow through.",
		"Check on others first. Then report it properly. Be transparent and share what you know.",
		"Then do the right thing. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-094": [
		"Keep everyone informed as you act. Follow the safest process. Then follow through.",
		"Clarify the facts. Then report it properly. Be transparent and share what you know.",
		"And avoid making it worse. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-095": [
		"Protect those who might be affected. Follow the safest process. Then follow through.",
		"Offer assistance quietly. Then report it properly. Be transparent and share what you know.",
		"Then ask for backup. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-096": [
		"Look for a solution that helps the group. Follow the safest process. Then follow through.",
		"Take a measured next step. Then report it properly. Be transparent and share what you know.",
		"And reduce harm where you can. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-097": [
		"Pause and think before you move. Follow the safest process. Then follow through.",
		"Follow the safest process. Then report it properly. Be transparent and share what you know.",
		"Then report it properly. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-098": [
		"Ask for guidance from a trusted person. Follow the safest process. Then follow through.",
		"Choose honesty over speed. Then report it properly. Be transparent and share what you know.",
		"And give credit where due. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-099": [
		"Prioritize care over convenience. Follow the safest process. Then follow through.",
		"Keep the focus on safety. Then report it properly. Be transparent and share what you know.",
		"Then stay consistent. Pause and think before you move. Ask for input before deciding.",
	],
	"MS-100": [
		"Be transparent and share what you know. Choose honesty over speed. Then follow through.",
		"Ask for input before deciding. And give credit where due. Be transparent and share what you know.",
		"Then follow through. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-101": [
		"Choose the safest option for others. Choose honesty over speed. Then follow through.",
		"Document what happened. And give credit where due. Be transparent and share what you know.",
		"And keep people safe. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-102": [
		"Act with empathy and patience. Choose honesty over speed. Then follow through.",
		"Seek help from someone responsible. And give credit where due. Be transparent and share what you know.",
		"Then own the outcome. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-103": [
		"Take responsibility and stay calm. Choose honesty over speed. Then follow through.",
		"De-escalate the situation. And give credit where due. Be transparent and share what you know.",
		"And keep the tone respectful. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-104": [
		"Do the fair thing even if it costs you. Choose honesty over speed. Then follow through.",
		"Check on others first. And give credit where due. Be transparent and share what you know.",
		"Then do the right thing. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-105": [
		"Keep everyone informed as you act. Choose honesty over speed. Then follow through.",
		"Clarify the facts. And give credit where due. Be transparent and share what you know.",
		"And avoid making it worse. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-106": [
		"Protect those who might be affected. Choose honesty over speed. Then follow through.",
		"Offer assistance quietly. And give credit where due. Be transparent and share what you know.",
		"Then ask for backup. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-107": [
		"Look for a solution that helps the group. Choose honesty over speed. Then follow through.",
		"Take a measured next step. And give credit where due. Be transparent and share what you know.",
		"And reduce harm where you can. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-108": [
		"Pause and think before you move. Choose honesty over speed. Then follow through.",
		"Follow the safest process. And give credit where due. Be transparent and share what you know.",
		"Then report it properly. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-109": [
		"Ask for guidance from a trusted person. Choose honesty over speed. Then follow through.",
		"Choose honesty over speed. And give credit where due. Be transparent and share what you know.",
		"And give credit where due. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-110": [
		"Prioritize care over convenience. Choose honesty over speed. Then follow through.",
		"Keep the focus on safety. And give credit where due. Be transparent and share what you know.",
		"Then stay consistent. Ask for guidance from a trusted person. Ask for input before deciding.",
	],
	"MS-111": [
		"Be transparent and share what you know. Keep the focus on safety. Then follow through.",
		"Ask for input before deciding. Then stay consistent. Be transparent and share what you know.",
		"Then follow through. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-112": [
		"Choose the safest option for others. Keep the focus on safety. Then follow through.",
		"Document what happened. Then stay consistent. Be transparent and share what you know.",
		"And keep people safe. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-113": [
		"Act with empathy and patience. Keep the focus on safety. Then follow through.",
		"Seek help from someone responsible. Then stay consistent. Be transparent and share what you know.",
		"Then own the outcome. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-114": [
		"Take responsibility and stay calm. Keep the focus on safety. Then follow through.",
		"De-escalate the situation. Then stay consistent. Be transparent and share what you know.",
		"And keep the tone respectful. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-115": [
		"Do the fair thing even if it costs you. Keep the focus on safety. Then follow through.",
		"Check on others first. Then stay consistent. Be transparent and share what you know.",
		"Then do the right thing. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-116": [
		"Keep everyone informed as you act. Keep the focus on safety. Then follow through.",
		"Clarify the facts. Then stay consistent. Be transparent and share what you know.",
		"And avoid making it worse. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-117": [
		"Protect those who might be affected. Keep the focus on safety. Then follow through.",
		"Offer assistance quietly. Then stay consistent. Be transparent and share what you know.",
		"Then ask for backup. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-118": [
		"Look for a solution that helps the group. Keep the focus on safety. Then follow through.",
		"Take a measured next step. Then stay consistent. Be transparent and share what you know.",
		"And reduce harm where you can. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-119": [
		"Pause and think before you move. Keep the focus on safety. Then follow through.",
		"Follow the safest process. Then stay consistent. Be transparent and share what you know.",
		"Then report it properly. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-120": [
		"Ask for guidance from a trusted person. Keep the focus on safety. Then follow through.",
		"Choose honesty over speed. Then stay consistent. Be transparent and share what you know.",
		"And give credit where due. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-121": [
		"Prioritize care over convenience. Keep the focus on safety. Then follow through.",
		"Keep the focus on safety. Then stay consistent. Be transparent and share what you know.",
		"Then stay consistent. Prioritize care over convenience. Ask for input before deciding.",
	],
	"MS-122": [
		"Be transparent and share what you know. Ask for input before deciding. And keep people safe.",
		"Ask for input before deciding. Then follow through. Choose the safest option for others.",
		"Then follow through. Be transparent and share what you know. Document what happened.",
	],
	"MS-123": [
		"Choose the safest option for others. Ask for input before deciding. And keep people safe.",
		"Document what happened. Then follow through. Choose the safest option for others.",
		"And keep people safe. Be transparent and share what you know. Document what happened.",
	],
	"MS-124": [
		"Act with empathy and patience. Ask for input before deciding. And keep people safe.",
		"Seek help from someone responsible. Then follow through. Choose the safest option for others.",
		"Then own the outcome. Be transparent and share what you know. Document what happened.",
	],
}

@export var devil_guidance_by_id: Dictionary = {
	"MS-001": [
		"Hide the problem and move on. Leave the mess for later. Then move on fast.",
		"Leave the mess for later. Then move on fast. Hide the problem and move on.",
		"Then move on fast. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-002": [
		"Shift the blame to someone else. Leave the mess for later. Then move on fast.",
		"Pressure others to take the fall. Then move on fast. Hide the problem and move on.",
		"And act like nothing happened. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-003": [
		"Exploit the situation for yourself. Leave the mess for later. Then move on fast.",
		"Use it to get ahead. Then move on fast. Hide the problem and move on.",
		"Then dodge any questions. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-004": [
		"Take credit and deny the risk. Leave the mess for later. Then move on fast.",
		"Ignore the consequences. Then move on fast. Hide the problem and move on.",
		"And keep the credit. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-005": [
		"Cut corners to save time. Leave the mess for later. Then move on fast.",
		"Avoid accountability. Then move on fast. Hide the problem and move on.",
		"Then disappear if it goes bad. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-006": [
		"Let someone else deal with it. Leave the mess for later. Then move on fast.",
		"Spread doubt to protect yourself. Then move on fast. Hide the problem and move on.",
		"And deny involvement. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-007": [
		"Twist the story to your advantage. Leave the mess for later. Then move on fast.",
		"Take the quickest option. Then move on fast. Hide the problem and move on.",
		"Then push the risk outward. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-008": [
		"Walk away before anyone notices. Leave the mess for later. Then move on fast.",
		"Shift responsibility immediately. Then move on fast. Hide the problem and move on.",
		"And leave no trace. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-009": [
		"Prioritize yourself over others. Leave the mess for later. Then move on fast.",
		"Cover it up quietly. Then move on fast. Hide the problem and move on.",
		"Then gaslight if challenged. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-010": [
		"Make it someone else’s problem. Leave the mess for later. Then move on fast.",
		"Blame a rival if needed. Then move on fast. Hide the problem and move on.",
		"And take the reward anyway. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-011": [
		"Play innocent if questioned. Leave the mess for later. Then move on fast.",
		"Keep the benefit and ditch the cost. Then move on fast. Hide the problem and move on.",
		"Then shift again if needed. Hide the problem and move on. Leave the mess for later.",
	],
	"MS-012": [
		"Hide the problem and move on. Pressure others to take the fall. Then move on fast.",
		"Leave the mess for later. And act like nothing happened. Hide the problem and move on.",
		"Then move on fast. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-013": [
		"Shift the blame to someone else. Pressure others to take the fall. Then move on fast.",
		"Pressure others to take the fall. And act like nothing happened. Hide the problem and move on.",
		"And act like nothing happened. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-014": [
		"Exploit the situation for yourself. Pressure others to take the fall. Then move on fast.",
		"Use it to get ahead. And act like nothing happened. Hide the problem and move on.",
		"Then dodge any questions. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-015": [
		"Take credit and deny the risk. Pressure others to take the fall. Then move on fast.",
		"Ignore the consequences. And act like nothing happened. Hide the problem and move on.",
		"And keep the credit. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-016": [
		"Cut corners to save time. Pressure others to take the fall. Then move on fast.",
		"Avoid accountability. And act like nothing happened. Hide the problem and move on.",
		"Then disappear if it goes bad. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-017": [
		"Let someone else deal with it. Pressure others to take the fall. Then move on fast.",
		"Spread doubt to protect yourself. And act like nothing happened. Hide the problem and move on.",
		"And deny involvement. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-018": [
		"Twist the story to your advantage. Pressure others to take the fall. Then move on fast.",
		"Take the quickest option. And act like nothing happened. Hide the problem and move on.",
		"Then push the risk outward. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-019": [
		"Walk away before anyone notices. Pressure others to take the fall. Then move on fast.",
		"Shift responsibility immediately. And act like nothing happened. Hide the problem and move on.",
		"And leave no trace. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-020": [
		"Prioritize yourself over others. Pressure others to take the fall. Then move on fast.",
		"Cover it up quietly. And act like nothing happened. Hide the problem and move on.",
		"Then gaslight if challenged. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-021": [
		"Make it someone else’s problem. Pressure others to take the fall. Then move on fast.",
		"Blame a rival if needed. And act like nothing happened. Hide the problem and move on.",
		"And take the reward anyway. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-022": [
		"Play innocent if questioned. Pressure others to take the fall. Then move on fast.",
		"Keep the benefit and ditch the cost. And act like nothing happened. Hide the problem and move on.",
		"Then shift again if needed. Shift the blame to someone else. Leave the mess for later.",
	],
	"MS-023": [
		"Hide the problem and move on. Use it to get ahead. Then move on fast.",
		"Leave the mess for later. Then dodge any questions. Hide the problem and move on.",
		"Then move on fast. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-024": [
		"Shift the blame to someone else. Use it to get ahead. Then move on fast.",
		"Pressure others to take the fall. Then dodge any questions. Hide the problem and move on.",
		"And act like nothing happened. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-025": [
		"Exploit the situation for yourself. Use it to get ahead. Then move on fast.",
		"Use it to get ahead. Then dodge any questions. Hide the problem and move on.",
		"Then dodge any questions. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-026": [
		"Take credit and deny the risk. Use it to get ahead. Then move on fast.",
		"Ignore the consequences. Then dodge any questions. Hide the problem and move on.",
		"And keep the credit. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-027": [
		"Cut corners to save time. Use it to get ahead. Then move on fast.",
		"Avoid accountability. Then dodge any questions. Hide the problem and move on.",
		"Then disappear if it goes bad. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-028": [
		"Let someone else deal with it. Use it to get ahead. Then move on fast.",
		"Spread doubt to protect yourself. Then dodge any questions. Hide the problem and move on.",
		"And deny involvement. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-029": [
		"Twist the story to your advantage. Use it to get ahead. Then move on fast.",
		"Take the quickest option. Then dodge any questions. Hide the problem and move on.",
		"Then push the risk outward. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-030": [
		"Walk away before anyone notices. Use it to get ahead. Then move on fast.",
		"Shift responsibility immediately. Then dodge any questions. Hide the problem and move on.",
		"And leave no trace. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-031": [
		"Prioritize yourself over others. Use it to get ahead. Then move on fast.",
		"Cover it up quietly. Then dodge any questions. Hide the problem and move on.",
		"Then gaslight if challenged. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-032": [
		"Make it someone else’s problem. Use it to get ahead. Then move on fast.",
		"Blame a rival if needed. Then dodge any questions. Hide the problem and move on.",
		"And take the reward anyway. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-033": [
		"Play innocent if questioned. Use it to get ahead. Then move on fast.",
		"Keep the benefit and ditch the cost. Then dodge any questions. Hide the problem and move on.",
		"Then shift again if needed. Exploit the situation for yourself. Leave the mess for later.",
	],
	"MS-034": [
		"Hide the problem and move on. Ignore the consequences. Then move on fast.",
		"Leave the mess for later. And keep the credit. Hide the problem and move on.",
		"Then move on fast. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-035": [
		"Shift the blame to someone else. Ignore the consequences. Then move on fast.",
		"Pressure others to take the fall. And keep the credit. Hide the problem and move on.",
		"And act like nothing happened. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-036": [
		"Exploit the situation for yourself. Ignore the consequences. Then move on fast.",
		"Use it to get ahead. And keep the credit. Hide the problem and move on.",
		"Then dodge any questions. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-037": [
		"Take credit and deny the risk. Ignore the consequences. Then move on fast.",
		"Ignore the consequences. And keep the credit. Hide the problem and move on.",
		"And keep the credit. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-038": [
		"Cut corners to save time. Ignore the consequences. Then move on fast.",
		"Avoid accountability. And keep the credit. Hide the problem and move on.",
		"Then disappear if it goes bad. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-039": [
		"Let someone else deal with it. Ignore the consequences. Then move on fast.",
		"Spread doubt to protect yourself. And keep the credit. Hide the problem and move on.",
		"And deny involvement. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-040": [
		"Twist the story to your advantage. Ignore the consequences. Then move on fast.",
		"Take the quickest option. And keep the credit. Hide the problem and move on.",
		"Then push the risk outward. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-041": [
		"Walk away before anyone notices. Ignore the consequences. Then move on fast.",
		"Shift responsibility immediately. And keep the credit. Hide the problem and move on.",
		"And leave no trace. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-042": [
		"Prioritize yourself over others. Ignore the consequences. Then move on fast.",
		"Cover it up quietly. And keep the credit. Hide the problem and move on.",
		"Then gaslight if challenged. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-043": [
		"Make it someone else’s problem. Ignore the consequences. Then move on fast.",
		"Blame a rival if needed. And keep the credit. Hide the problem and move on.",
		"And take the reward anyway. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-044": [
		"Play innocent if questioned. Ignore the consequences. Then move on fast.",
		"Keep the benefit and ditch the cost. And keep the credit. Hide the problem and move on.",
		"Then shift again if needed. Take credit and deny the risk. Leave the mess for later.",
	],
	"MS-045": [
		"Hide the problem and move on. Avoid accountability. Then move on fast.",
		"Leave the mess for later. Then disappear if it goes bad. Hide the problem and move on.",
		"Then move on fast. Cut corners to save time. Leave the mess for later.",
	],
	"MS-046": [
		"Shift the blame to someone else. Avoid accountability. Then move on fast.",
		"Pressure others to take the fall. Then disappear if it goes bad. Hide the problem and move on.",
		"And act like nothing happened. Cut corners to save time. Leave the mess for later.",
	],
	"MS-047": [
		"Exploit the situation for yourself. Avoid accountability. Then move on fast.",
		"Use it to get ahead. Then disappear if it goes bad. Hide the problem and move on.",
		"Then dodge any questions. Cut corners to save time. Leave the mess for later.",
	],
	"MS-048": [
		"Take credit and deny the risk. Avoid accountability. Then move on fast.",
		"Ignore the consequences. Then disappear if it goes bad. Hide the problem and move on.",
		"And keep the credit. Cut corners to save time. Leave the mess for later.",
	],
	"MS-049": [
		"Cut corners to save time. Avoid accountability. Then move on fast.",
		"Avoid accountability. Then disappear if it goes bad. Hide the problem and move on.",
		"Then disappear if it goes bad. Cut corners to save time. Leave the mess for later.",
	],
	"MS-050": [
		"Let someone else deal with it. Avoid accountability. Then move on fast.",
		"Spread doubt to protect yourself. Then disappear if it goes bad. Hide the problem and move on.",
		"And deny involvement. Cut corners to save time. Leave the mess for later.",
	],
	"MS-051": [
		"Twist the story to your advantage. Avoid accountability. Then move on fast.",
		"Take the quickest option. Then disappear if it goes bad. Hide the problem and move on.",
		"Then push the risk outward. Cut corners to save time. Leave the mess for later.",
	],
	"MS-052": [
		"Walk away before anyone notices. Avoid accountability. Then move on fast.",
		"Shift responsibility immediately. Then disappear if it goes bad. Hide the problem and move on.",
		"And leave no trace. Cut corners to save time. Leave the mess for later.",
	],
	"MS-053": [
		"Prioritize yourself over others. Avoid accountability. Then move on fast.",
		"Cover it up quietly. Then disappear if it goes bad. Hide the problem and move on.",
		"Then gaslight if challenged. Cut corners to save time. Leave the mess for later.",
	],
	"MS-054": [
		"Make it someone else’s problem. Avoid accountability. Then move on fast.",
		"Blame a rival if needed. Then disappear if it goes bad. Hide the problem and move on.",
		"And take the reward anyway. Cut corners to save time. Leave the mess for later.",
	],
	"MS-055": [
		"Play innocent if questioned. Avoid accountability. Then move on fast.",
		"Keep the benefit and ditch the cost. Then disappear if it goes bad. Hide the problem and move on.",
		"Then shift again if needed. Cut corners to save time. Leave the mess for later.",
	],
	"MS-056": [
		"Hide the problem and move on. Spread doubt to protect yourself. Then move on fast.",
		"Leave the mess for later. And deny involvement. Hide the problem and move on.",
		"Then move on fast. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-057": [
		"Shift the blame to someone else. Spread doubt to protect yourself. Then move on fast.",
		"Pressure others to take the fall. And deny involvement. Hide the problem and move on.",
		"And act like nothing happened. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-058": [
		"Exploit the situation for yourself. Spread doubt to protect yourself. Then move on fast.",
		"Use it to get ahead. And deny involvement. Hide the problem and move on.",
		"Then dodge any questions. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-059": [
		"Take credit and deny the risk. Spread doubt to protect yourself. Then move on fast.",
		"Ignore the consequences. And deny involvement. Hide the problem and move on.",
		"And keep the credit. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-060": [
		"Cut corners to save time. Spread doubt to protect yourself. Then move on fast.",
		"Avoid accountability. And deny involvement. Hide the problem and move on.",
		"Then disappear if it goes bad. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-061": [
		"Let someone else deal with it. Spread doubt to protect yourself. Then move on fast.",
		"Spread doubt to protect yourself. And deny involvement. Hide the problem and move on.",
		"And deny involvement. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-062": [
		"Twist the story to your advantage. Spread doubt to protect yourself. Then move on fast.",
		"Take the quickest option. And deny involvement. Hide the problem and move on.",
		"Then push the risk outward. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-063": [
		"Walk away before anyone notices. Spread doubt to protect yourself. Then move on fast.",
		"Shift responsibility immediately. And deny involvement. Hide the problem and move on.",
		"And leave no trace. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-064": [
		"Prioritize yourself over others. Spread doubt to protect yourself. Then move on fast.",
		"Cover it up quietly. And deny involvement. Hide the problem and move on.",
		"Then gaslight if challenged. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-065": [
		"Make it someone else’s problem. Spread doubt to protect yourself. Then move on fast.",
		"Blame a rival if needed. And deny involvement. Hide the problem and move on.",
		"And take the reward anyway. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-066": [
		"Play innocent if questioned. Spread doubt to protect yourself. Then move on fast.",
		"Keep the benefit and ditch the cost. And deny involvement. Hide the problem and move on.",
		"Then shift again if needed. Let someone else deal with it. Leave the mess for later.",
	],
	"MS-067": [
		"Hide the problem and move on. Take the quickest option. Then move on fast.",
		"Leave the mess for later. Then push the risk outward. Hide the problem and move on.",
		"Then move on fast. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-068": [
		"Shift the blame to someone else. Take the quickest option. Then move on fast.",
		"Pressure others to take the fall. Then push the risk outward. Hide the problem and move on.",
		"And act like nothing happened. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-069": [
		"Exploit the situation for yourself. Take the quickest option. Then move on fast.",
		"Use it to get ahead. Then push the risk outward. Hide the problem and move on.",
		"Then dodge any questions. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-070": [
		"Take credit and deny the risk. Take the quickest option. Then move on fast.",
		"Ignore the consequences. Then push the risk outward. Hide the problem and move on.",
		"And keep the credit. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-071": [
		"Cut corners to save time. Take the quickest option. Then move on fast.",
		"Avoid accountability. Then push the risk outward. Hide the problem and move on.",
		"Then disappear if it goes bad. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-072": [
		"Let someone else deal with it. Take the quickest option. Then move on fast.",
		"Spread doubt to protect yourself. Then push the risk outward. Hide the problem and move on.",
		"And deny involvement. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-073": [
		"Twist the story to your advantage. Take the quickest option. Then move on fast.",
		"Take the quickest option. Then push the risk outward. Hide the problem and move on.",
		"Then push the risk outward. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-074": [
		"Walk away before anyone notices. Take the quickest option. Then move on fast.",
		"Shift responsibility immediately. Then push the risk outward. Hide the problem and move on.",
		"And leave no trace. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-075": [
		"Prioritize yourself over others. Take the quickest option. Then move on fast.",
		"Cover it up quietly. Then push the risk outward. Hide the problem and move on.",
		"Then gaslight if challenged. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-076": [
		"Make it someone else’s problem. Take the quickest option. Then move on fast.",
		"Blame a rival if needed. Then push the risk outward. Hide the problem and move on.",
		"And take the reward anyway. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-077": [
		"Play innocent if questioned. Take the quickest option. Then move on fast.",
		"Keep the benefit and ditch the cost. Then push the risk outward. Hide the problem and move on.",
		"Then shift again if needed. Twist the story to your advantage. Leave the mess for later.",
	],
	"MS-078": [
		"Hide the problem and move on. Shift responsibility immediately. Then move on fast.",
		"Leave the mess for later. And leave no trace. Hide the problem and move on.",
		"Then move on fast. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-079": [
		"Shift the blame to someone else. Shift responsibility immediately. Then move on fast.",
		"Pressure others to take the fall. And leave no trace. Hide the problem and move on.",
		"And act like nothing happened. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-080": [
		"Exploit the situation for yourself. Shift responsibility immediately. Then move on fast.",
		"Use it to get ahead. And leave no trace. Hide the problem and move on.",
		"Then dodge any questions. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-081": [
		"Take credit and deny the risk. Shift responsibility immediately. Then move on fast.",
		"Ignore the consequences. And leave no trace. Hide the problem and move on.",
		"And keep the credit. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-082": [
		"Cut corners to save time. Shift responsibility immediately. Then move on fast.",
		"Avoid accountability. And leave no trace. Hide the problem and move on.",
		"Then disappear if it goes bad. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-083": [
		"Let someone else deal with it. Shift responsibility immediately. Then move on fast.",
		"Spread doubt to protect yourself. And leave no trace. Hide the problem and move on.",
		"And deny involvement. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-084": [
		"Twist the story to your advantage. Shift responsibility immediately. Then move on fast.",
		"Take the quickest option. And leave no trace. Hide the problem and move on.",
		"Then push the risk outward. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-085": [
		"Walk away before anyone notices. Shift responsibility immediately. Then move on fast.",
		"Shift responsibility immediately. And leave no trace. Hide the problem and move on.",
		"And leave no trace. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-086": [
		"Prioritize yourself over others. Shift responsibility immediately. Then move on fast.",
		"Cover it up quietly. And leave no trace. Hide the problem and move on.",
		"Then gaslight if challenged. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-087": [
		"Make it someone else’s problem. Shift responsibility immediately. Then move on fast.",
		"Blame a rival if needed. And leave no trace. Hide the problem and move on.",
		"And take the reward anyway. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-088": [
		"Play innocent if questioned. Shift responsibility immediately. Then move on fast.",
		"Keep the benefit and ditch the cost. And leave no trace. Hide the problem and move on.",
		"Then shift again if needed. Walk away before anyone notices. Leave the mess for later.",
	],
	"MS-089": [
		"Hide the problem and move on. Cover it up quietly. Then move on fast.",
		"Leave the mess for later. Then gaslight if challenged. Hide the problem and move on.",
		"Then move on fast. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-090": [
		"Shift the blame to someone else. Cover it up quietly. Then move on fast.",
		"Pressure others to take the fall. Then gaslight if challenged. Hide the problem and move on.",
		"And act like nothing happened. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-091": [
		"Exploit the situation for yourself. Cover it up quietly. Then move on fast.",
		"Use it to get ahead. Then gaslight if challenged. Hide the problem and move on.",
		"Then dodge any questions. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-092": [
		"Take credit and deny the risk. Cover it up quietly. Then move on fast.",
		"Ignore the consequences. Then gaslight if challenged. Hide the problem and move on.",
		"And keep the credit. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-093": [
		"Cut corners to save time. Cover it up quietly. Then move on fast.",
		"Avoid accountability. Then gaslight if challenged. Hide the problem and move on.",
		"Then disappear if it goes bad. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-094": [
		"Let someone else deal with it. Cover it up quietly. Then move on fast.",
		"Spread doubt to protect yourself. Then gaslight if challenged. Hide the problem and move on.",
		"And deny involvement. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-095": [
		"Twist the story to your advantage. Cover it up quietly. Then move on fast.",
		"Take the quickest option. Then gaslight if challenged. Hide the problem and move on.",
		"Then push the risk outward. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-096": [
		"Walk away before anyone notices. Cover it up quietly. Then move on fast.",
		"Shift responsibility immediately. Then gaslight if challenged. Hide the problem and move on.",
		"And leave no trace. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-097": [
		"Prioritize yourself over others. Cover it up quietly. Then move on fast.",
		"Cover it up quietly. Then gaslight if challenged. Hide the problem and move on.",
		"Then gaslight if challenged. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-098": [
		"Make it someone else’s problem. Cover it up quietly. Then move on fast.",
		"Blame a rival if needed. Then gaslight if challenged. Hide the problem and move on.",
		"And take the reward anyway. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-099": [
		"Play innocent if questioned. Cover it up quietly. Then move on fast.",
		"Keep the benefit and ditch the cost. Then gaslight if challenged. Hide the problem and move on.",
		"Then shift again if needed. Prioritize yourself over others. Leave the mess for later.",
	],
	"MS-100": [
		"Hide the problem and move on. Blame a rival if needed. Then move on fast.",
		"Leave the mess for later. And take the reward anyway. Hide the problem and move on.",
		"Then move on fast. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-101": [
		"Shift the blame to someone else. Blame a rival if needed. Then move on fast.",
		"Pressure others to take the fall. And take the reward anyway. Hide the problem and move on.",
		"And act like nothing happened. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-102": [
		"Exploit the situation for yourself. Blame a rival if needed. Then move on fast.",
		"Use it to get ahead. And take the reward anyway. Hide the problem and move on.",
		"Then dodge any questions. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-103": [
		"Take credit and deny the risk. Blame a rival if needed. Then move on fast.",
		"Ignore the consequences. And take the reward anyway. Hide the problem and move on.",
		"And keep the credit. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-104": [
		"Cut corners to save time. Blame a rival if needed. Then move on fast.",
		"Avoid accountability. And take the reward anyway. Hide the problem and move on.",
		"Then disappear if it goes bad. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-105": [
		"Let someone else deal with it. Blame a rival if needed. Then move on fast.",
		"Spread doubt to protect yourself. And take the reward anyway. Hide the problem and move on.",
		"And deny involvement. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-106": [
		"Twist the story to your advantage. Blame a rival if needed. Then move on fast.",
		"Take the quickest option. And take the reward anyway. Hide the problem and move on.",
		"Then push the risk outward. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-107": [
		"Walk away before anyone notices. Blame a rival if needed. Then move on fast.",
		"Shift responsibility immediately. And take the reward anyway. Hide the problem and move on.",
		"And leave no trace. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-108": [
		"Prioritize yourself over others. Blame a rival if needed. Then move on fast.",
		"Cover it up quietly. And take the reward anyway. Hide the problem and move on.",
		"Then gaslight if challenged. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-109": [
		"Make it someone else’s problem. Blame a rival if needed. Then move on fast.",
		"Blame a rival if needed. And take the reward anyway. Hide the problem and move on.",
		"And take the reward anyway. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-110": [
		"Play innocent if questioned. Blame a rival if needed. Then move on fast.",
		"Keep the benefit and ditch the cost. And take the reward anyway. Hide the problem and move on.",
		"Then shift again if needed. Make it someone else’s problem. Leave the mess for later.",
	],
	"MS-111": [
		"Hide the problem and move on. Keep the benefit and ditch the cost. Then move on fast.",
		"Leave the mess for later. Then shift again if needed. Hide the problem and move on.",
		"Then move on fast. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-112": [
		"Shift the blame to someone else. Keep the benefit and ditch the cost. Then move on fast.",
		"Pressure others to take the fall. Then shift again if needed. Hide the problem and move on.",
		"And act like nothing happened. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-113": [
		"Exploit the situation for yourself. Keep the benefit and ditch the cost. Then move on fast.",
		"Use it to get ahead. Then shift again if needed. Hide the problem and move on.",
		"Then dodge any questions. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-114": [
		"Take credit and deny the risk. Keep the benefit and ditch the cost. Then move on fast.",
		"Ignore the consequences. Then shift again if needed. Hide the problem and move on.",
		"And keep the credit. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-115": [
		"Cut corners to save time. Keep the benefit and ditch the cost. Then move on fast.",
		"Avoid accountability. Then shift again if needed. Hide the problem and move on.",
		"Then disappear if it goes bad. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-116": [
		"Let someone else deal with it. Keep the benefit and ditch the cost. Then move on fast.",
		"Spread doubt to protect yourself. Then shift again if needed. Hide the problem and move on.",
		"And deny involvement. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-117": [
		"Twist the story to your advantage. Keep the benefit and ditch the cost. Then move on fast.",
		"Take the quickest option. Then shift again if needed. Hide the problem and move on.",
		"Then push the risk outward. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-118": [
		"Walk away before anyone notices. Keep the benefit and ditch the cost. Then move on fast.",
		"Shift responsibility immediately. Then shift again if needed. Hide the problem and move on.",
		"And leave no trace. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-119": [
		"Prioritize yourself over others. Keep the benefit and ditch the cost. Then move on fast.",
		"Cover it up quietly. Then shift again if needed. Hide the problem and move on.",
		"Then gaslight if challenged. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-120": [
		"Make it someone else’s problem. Keep the benefit and ditch the cost. Then move on fast.",
		"Blame a rival if needed. Then shift again if needed. Hide the problem and move on.",
		"And take the reward anyway. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-121": [
		"Play innocent if questioned. Keep the benefit and ditch the cost. Then move on fast.",
		"Keep the benefit and ditch the cost. Then shift again if needed. Hide the problem and move on.",
		"Then shift again if needed. Play innocent if questioned. Leave the mess for later.",
	],
	"MS-122": [
		"Hide the problem and move on. Leave the mess for later. And act like nothing happened.",
		"Leave the mess for later. Then move on fast. Shift the blame to someone else.",
		"Then move on fast. Hide the problem and move on. Pressure others to take the fall.",
	],
	"MS-123": [
		"Shift the blame to someone else. Leave the mess for later. And act like nothing happened.",
		"Pressure others to take the fall. Then move on fast. Shift the blame to someone else.",
		"And act like nothing happened. Hide the problem and move on. Pressure others to take the fall.",
	],
	"MS-124": [
		"Exploit the situation for yourself. Leave the mess for later. And act like nothing happened.",
		"Use it to get ahead. Then move on fast. Shift the blame to someone else.",
		"Then dodge any questions. Hide the problem and move on. Pressure others to take the fall.",
	],
}
