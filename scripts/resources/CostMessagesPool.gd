extends Resource
class_name CostMessagesPool

const COST_VALUES := [5, 10, 15]

@export var messages: Dictionary = {
	"Intellect": [
		"{name} struggled to stay focused through a long meeting.",
		"{name} spent hours solving a tough problem at work.",
		"{name} had to memorize a large set of new procedures today.",
		"A last-minute task forced {name} to think on their feet.",
		"{name} reviewed dense documents for most of the afternoon.",
		"{name} debugged a tricky issue that took all day.",
		"{name} was pulled into a complex planning session.",
		"{name} worked through a confusing set of requirements.",
		"{name} was asked to train someone and explain everything clearly.",
		"{name} had to re-check their work twice to avoid mistakes."
	],
	"Aesthetic": [
		"{name} spent the day refining small visual details.",
		"{name} kept reworking a design until it felt right.",
		"{name} adjusted colors and layouts for hours.",
		"{name} had to match a style guide with strict rules.",
		"{name} was asked to present a polished draft on short notice.",
		"{name} compared multiple versions to choose the best look.",
		"{name} revised a piece repeatedly after feedback.",
		"{name} spent the afternoon prepping a clean, neat presentation.",
		"{name} was stuck on a creative choice and overthought it.",
		"{name} tuned small details that most people will never notice."
	],
	"Health": [
		"{name} ate something bad for breakfast.",
		"{name} skipped lunch and felt the crash later.",
		"{name} caught a chill on the way to work.",
		"{name} woke up with a stiff neck.",
		"{name} pulled a muscle lifting something awkward.",
		"{name} spent the day on their feet without a break.",
		"{name} dealt with a nagging headache all afternoon.",
		"{name} had to work through a mild fever.",
		"{name} got soaked in the rain and felt run down.",
		"{name} forgot to hydrate and felt sluggish later."
	],
	"Volatility": [
		"{name} used a lot of mental energy at work today.",
		"A commuter shouted at {name} on their way to work.",
		"{name} was put on the spot in front of everyone.",
		"{name} had a tense exchange with a coworker.",
		"{name} dealt with a sudden change of plans.",
		"{name} felt overwhelmed by a chaotic workday.",
		"{name} was pushed by constant interruptions.",
		"{name} had to handle a frustrating mistake.",
		"{name} was rattled by a rushed deadline.",
		"{name} got blamed for something that was not their fault."
	],
	"Affect": [
		"{name} felt ignored during a group discussion.",
		"{name} got discouraging feedback on their work.",
		"{name} missed a small but important personal milestone.",
		"{name} spent the afternoon feeling isolated.",
		"{name} had a quiet day that felt empty.",
		"{name} was disappointed by how the day turned out.",
		"{name} felt worn down by a steady stream of bad news.",
		"{name} had trouble shaking a low mood.",
		"{name} felt unappreciated after finishing a hard task.",
		"{name} ended the day feeling drained and flat."
	],
}

func get_message(subject: SubjectResource, stat_name: String) -> Dictionary:
	var options: Array = messages.get(stat_name, [])
	if options.is_empty():
		return {"text": "", "cost": 0}
	var text := (options.pick_random() as String).format({"name": subject.name})
	var cost_value := COST_VALUES.pick_random() as int
	return {"text": text, "cost": cost_value}
