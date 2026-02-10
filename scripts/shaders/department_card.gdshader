shader_type canvas_item;

uniform float speed : hint_range(0.0, 10.0) = 2.0;
uniform float amplitude : hint_range(0.0, 50.0) = 5.0;
uniform float frequency : hint_range(0.0, 0.1) = 0.01;
uniform float margin = 10.0;

void vertex() {
	// Expand the vertices so the wiggle doesn't clip at the edges
	VERTEX.x += (UV.x - 0.5) * margin;
	VERTEX.y += (UV.y - 0.5) * margin;

	// Movement logic
	float wave_y = sin(TIME * speed + VERTEX.x * frequency) * amplitude;
	float wave_x = cos(TIME * speed + VERTEX.y * frequency) * amplitude * 0.2;

	VERTEX.y += wave_y;
	VERTEX.x += wave_x;
}

void fragment() {
	// Use COLOR instead of texture(TEXTURE, UV)
	// This preserves the StyleBox color/gradient of the PanelContainer
	vec4 base_color = COLOR;
	
	// If your panel has a texture (like a StyleBoxTexture), 
	// COLOR will already have it. If not, COLOR is the flat color.
	COLOR = base_color;
}