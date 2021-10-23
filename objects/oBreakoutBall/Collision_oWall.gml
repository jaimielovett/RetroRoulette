did_collide = true;

// Make the ball change sprites
image_index = 1;

if (bbox_left < 0 + other.sprite_width || bbox_right > room_width - other.sprite_width) {
	x = clamp(x, 0+sprite_xoffset, room_width-sprite_xoffset);
	h_speed *= -1;
}

if (bbox_top < other.sprite_width) {
	y = clamp(y, 0+sprite_yoffset, room_height-sprite_yoffset);
	v_speed *= -1;
}

other.image_index = 1;
if other.alarm[0] == -1 other.alarm[0] = room_speed * 0.1;

// Spawn smoke particle effect
var _xx = x;
var _yy = y;
with (oParticles) {
	part_particles_create(part_system, _xx, _yy, part_type_smoke_effect, 5);
}

screenshake(30, 1, 0.5);