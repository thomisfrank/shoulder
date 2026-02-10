extends Resource
class_name ActivityMessagesPool

@export var messages: Dictionary = {
	"Physical": [
		"{name} went for a long walk in the neighborhood. The fresh air did some good.",
		"{name} did a short workout at home. It left them feeling stronger.",
		"{name} took a bike ride before sunset. The ride cleared their head.",
		"{name} tried a new stretching routine. It loosened up some tension.",
		"{name} went on a quick trail hike. The scenery was worth the effort."
	],
	"Creative": [
		"{name} sketched a small scene from memory. It turned out better than expected.",
		"{name} painted a simple landscape. The colors came together nicely.",
		"{name} wrote a short poem on a whim. It felt good to finish it.",
		"{name} tried a new craft idea. The result was rough but satisfying.",
		"{name} played around with a melody. A small motif finally clicked."
	],
	"Cognitive": [
		"{name} read a few chapters of a novel. It pulled them right in.",
		"{name} worked through a puzzle. The solution took longer than expected.",
		"{name} listened to a lecture online. One idea really stood out.",
		"{name} reviewed some notes and learned a new detail. It helped everything connect.",
		"{name} studied a topic they have been curious about. It was surprisingly engaging."
	],
	"Media": [
		"{name} watched a classic film. It held up well.",
		"{name} binged a few episodes of a show. The story picked up quickly.",
		"{name} listened to an album from start to finish. A couple tracks stood out.",
		"{name} checked out a retro comedy. It was charming in a simple way.",
		"{name} rewatched a favorite movie. It still hit the same notes."
	],
	"Relaxation": [
		"{name} spent a quiet evening unwinding. The pace felt just right.",
		"{name} took a long bath and shut out distractions. It helped them reset.",
		"{name} did some light gardening. The plants are starting to look healthier.",
		"{name} lounged with a cup of tea and no agenda. It was a calm night.",
		"{name} sat outside for a while and watched the sky. The silence was refreshing."
	],
}




func get_message(subject: SubjectResource, activity_type: String) -> String:
	var options: Array = messages.get(activity_type, [])
	if options.is_empty():
		return ""
	return (options.pick_random() as String).format({"name": subject.name})
