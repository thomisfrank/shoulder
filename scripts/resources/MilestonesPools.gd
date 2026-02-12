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
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-002": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-003": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-004": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-005": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-006": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-007": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-008": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-009": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-010": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-011": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-012": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-013": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-014": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-015": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-016": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-017": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-018": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-019": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-020": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-021": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-022": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-023": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-024": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-025": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-026": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-027": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-028": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-029": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-030": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-031": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-032": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-033": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-034": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-035": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-036": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-037": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-038": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-039": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-040": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-041": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-042": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-043": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-044": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-045": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-046": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-047": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-048": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-049": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-050": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-051": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-052": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-053": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-054": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-055": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-056": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-057": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-058": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-059": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-060": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-061": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-062": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-063": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-064": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-065": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-066": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-067": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-068": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-069": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-070": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-071": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-072": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-073": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-074": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-075": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-076": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-077": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-078": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-079": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-080": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-081": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-082": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-083": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-084": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-085": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-086": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-087": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-088": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-089": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-090": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-091": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-092": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-093": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-094": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-095": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-096": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-097": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-098": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-099": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-100": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-101": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-102": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-103": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-104": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-105": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-106": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-107": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-108": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-109": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-110": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-111": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-112": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-113": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
	"MS-114": [
		"Take responsibility and stay calm.",		"De-escalate the situation.",		"Keep the tone respectful.",	],
	"MS-115": [
		"Do the fair thing even if it costs you.",		"Check on others first.",		"Do the right thing.",	],
	"MS-116": [
		"Keep everyone informed as you act.",		"Clarify the facts.",		"Avoid making it worse.",	],
	"MS-117": [
		"Protect those who might be affected.",		"Offer assistance quietly.",		"Ask for backup.",	],
	"MS-118": [
		"Look for a solution that helps the group.",		"Take a measured next step.",		"Reduce harm where you can.",	],
	"MS-119": [
		"Pause and think before you move.",		"Follow the safest process.",		"Report it properly.",	],
	"MS-120": [
		"Ask for guidance from a trusted person.",		"Choose honesty over speed.",		"Give credit where due.",	],
	"MS-121": [
		"Prioritize care over convenience.",		"Keep the focus on safety.",		"Stay consistent.",	],
	"MS-122": [
		"Be transparent and share what you know.",		"Ask for input before deciding.",		"Follow through.",	],
	"MS-123": [
		"Choose the safest option for others.",		"Document what happened.",		"Keep people safe.",	],
	"MS-124": [
		"Act with empathy and patience.",		"Seek help from someone responsible.",		"Own the outcome.",	],
}

@export var devil_guidance_by_id: Dictionary = {
	"MS-001": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-002": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-003": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-004": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-005": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-006": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-007": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-008": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-009": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-010": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-011": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-012": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-013": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-014": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-015": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-016": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-017": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-018": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-019": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-020": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-021": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-022": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-023": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-024": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-025": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-026": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-027": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-028": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-029": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-030": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-031": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-032": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-033": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-034": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-035": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-036": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-037": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-038": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-039": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-040": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-041": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-042": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-043": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-044": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-045": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-046": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-047": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-048": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-049": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-050": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-051": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-052": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-053": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-054": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-055": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-056": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-057": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-058": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-059": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-060": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-061": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-062": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-063": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-064": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-065": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-066": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-067": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-068": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-069": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-070": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-071": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-072": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-073": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-074": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-075": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-076": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-077": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-078": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-079": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-080": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-081": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-082": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-083": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-084": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-085": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-086": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-087": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-088": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-089": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-090": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-091": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-092": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-093": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-094": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-095": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-096": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-097": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-098": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-099": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-100": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-101": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-102": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-103": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-104": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-105": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-106": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-107": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-108": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-109": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-110": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-111": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-112": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-113": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
	"MS-114": [
		"Take credit and deny the risk.",		"Ignore the consequences.",		"Keep the credit.",	],
	"MS-115": [
		"Cut corners to save time.",		"Avoid accountability.",		"Disappear if it goes bad.",	],
	"MS-116": [
		"Let someone else deal with it.",		"Spread doubt to protect yourself.",		"Deny involvement.",	],
	"MS-117": [
		"Twist the story to your advantage.",		"Take the quickest option.",		"Push the risk outward.",	],
	"MS-118": [
		"Walk away before anyone notices.",		"Shift responsibility immediately.",		"Leave no trace.",	],
	"MS-119": [
		"Prioritize yourself over others.",		"Cover it up quietly.",		"Gaslight if challenged.",	],
	"MS-120": [
		"Make it someone else’s problem.",		"Blame a rival if needed.",		"Take the reward anyway.",	],
	"MS-121": [
		"Play innocent if questioned.",		"Keep the benefit and ditch the cost.",		"Shift again if needed.",	],
	"MS-122": [
		"Hide the problem and move on.",		"Leave the mess for later.",		"Move on fast.",	],
	"MS-123": [
		"Shift the blame to someone else.",		"Pressure others to take the fall.",		"Act like nothing happened.",	],
	"MS-124": [
		"Exploit the situation for yourself.",		"Use it to get ahead.",		"Dodge any questions.",	],
}

var _outcome_messages_by_id: Dictionary = {}
const OUTCOME_TEMPLATES := {
	"Great": [
		"{name} handled it brilliantly, and {effect}.",
		"{name} came out of it stronger, and {effect}.",
		"{name} made a great call, and {effect}.",
	],
	"Good": [
		"{name} made a steady choice, and {effect}.",
		"{name} found their footing, and {effect}.",
		"{name} kept things on track, and {effect}.",
	],
	"Bad": [
		"{name} hit a snag, and {effect}.",
		"{name}'s choice didn’t land, and {effect}.",
		"{name} stumbled a little, and {effect}.",
	],
	"Terrible": [
		"{name}'s decision went badly, and {effect}.",
		"{name} got hit hard by the outcome, and {effect}.",
		"{name} had a rough turn, and {effect}.",
	],
}

func get_outcome_message(
	milestone_id: String,
	result: String,
	subject: SubjectResource,
	stat_name: String,
	adjustment: int
) -> String:
	if subject == null:
		return ""
	if _outcome_messages_by_id.is_empty():
		_build_outcome_messages_by_id()
	var by_result: Dictionary = _outcome_messages_by_id.get(milestone_id, {}) as Dictionary
	if by_result.is_empty():
		return ""
	var options: Array = by_result.get(result, []) as Array
	if options.is_empty():
		return ""
	var template: String = String(options.pick_random())
	var effect: String = _stat_effect_phrase(stat_name, result)
	return template.format({
		"name": subject.name,
		"effect": effect
	})

func _build_outcome_messages_by_id() -> void:
	var ids: Array = _collect_all_milestone_ids()
	for milestone_id in ids:
		_outcome_messages_by_id[String(milestone_id)] = _build_outcome_message_set()

func _collect_all_milestone_ids() -> Array:
	var ids: Array = []
	_collect_ids_from_pool(job_milestones_pool, ids)
	_collect_ids_from_pool(activity_milestones_pool, ids)
	return ids

func _collect_ids_from_pool(pool: Dictionary, ids: Array) -> void:
	for key in pool.keys():
		var entries: Array = pool.get(key, []) as Array
		for entry in entries:
			if typeof(entry) != TYPE_DICTIONARY:
				continue
			var milestone_id: String = String((entry as Dictionary).get("id", ""))
			if milestone_id != "" and not ids.has(milestone_id):
				ids.append(milestone_id)

func _build_outcome_message_set() -> Dictionary:
	return {
		"Great": (OUTCOME_TEMPLATES["Great"] as Array).duplicate(),
		"Good": (OUTCOME_TEMPLATES["Good"] as Array).duplicate(),
		"Bad": (OUTCOME_TEMPLATES["Bad"] as Array).duplicate(),
		"Terrible": (OUTCOME_TEMPLATES["Terrible"] as Array).duplicate(),
	}

func _stat_effect_phrase(stat_name: String, result: String) -> String:
	var positive := result == "Great" or result == "Good"
	match stat_name:
		"Intellect":
			return "they feel sharper" if positive else "they feel foggier"
		"Aesthetic":
			return "they feel more expressive" if positive else "they feel creatively blocked"
		"Health":
			return "they feel healthier" if positive else "they feel drained"
		"Volatility":
			return "they feel calmer" if positive else "they feel more on edge"
		"Affect":
			return "they feel more upbeat" if positive else "they feel low"
		"Nature":
			return "they feel more open to others" if positive else "they feel more withdrawn"
	return "they feel changed by it" if positive else "it left them shaken"
