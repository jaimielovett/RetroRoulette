// If our game is past the starting stage, execute the win condition script.
if (!global.new_game_starting) {
	// If we have arguments for the win condition script, use them. Otherwise, just execute the win
	// condition script.
	if (win_condition_script_arg != -1) script_execute(win_condition_script, win_condition_script_arg);
	else script_execute(win_condition_script);
	// Reduce the timer by 1 per second.
	if timer >= 0 timer -= (1 / room_speed);
	if timer <= 0 timer = 0
}

if (global.game_over == true) {
	if alarm[3] == -1 alarm[3] = room_speed * 2;
	
	global.filter_active = true;
	global.game_over = false;
}

if (global.win_game == true && win_game_count <= 1) {
	instance_deactivate_object(oPlayer);
	
	repeat(30) {
		var _xx = irandom_range(0, room_width);
		var _yy = irandom_range(0, room_height);
		
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_confetti, 32);	
			part_particles_create(part_system, _xx, _yy, part_type_more_confetti, 32);	
		}
	}
	
	with (oParticles) {
		part_particles_create(part_system, room_width / 2, room_height / 2, part_type_win_debris, 500);
	}
	
	if alarm[4] == -1 alarm[4] = room_speed * 1.5;
	win_game_count++;
}