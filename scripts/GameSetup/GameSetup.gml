#region Setup

function setup_asteroids_destroy(){
	with (instance_create_layer(room_width / 2, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerAsteroids;	
		speed = 0;
		image_angle = 0;
	}
	
	repeat(3) {
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width),
		);
		
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height),
		);
		
		instance_create_layer(xx, yy, "Enemies", oAsteroid);
	}
}

function setup_asteroids_survive() {
	with (instance_create_layer(room_width / 2, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerAsteroids;	
		speed = 0;
		image_angle = 0;
	}
	
	repeat(10) {
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width),
		);
		
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height),
		);
		
		instance_create_layer(xx, yy, "Enemies", oAsteroid);
	}
}

function setup_space_invaders_destroy() {
	with (instance_create_layer(room_width / 2, room_height - 20, "Instances", oPlayer)) {
		sprite_index = sPlayerSpaceInvaders;
		speed = 0;
		image_angle = 0;
		velocity = 5;
		shoot_delay = 0.2;
	}
	
	var _x = 25;
	var _sep = room_width / 12;
	repeat (11) {
		with (instance_create_layer(_x, 20, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader1;
			right = true;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 70, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader2;
			right = true;
		}
		_x += _sep;
	}
		
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 120, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader3;
			right = true;
		}
		_x += _sep;
	}
}

function setup_space_invaders_survive() {
	with (instance_create_layer(room_width / 2, room_height - 20, "Instances", oPlayer)) {
		sprite_index = sPlayerSpaceInvaders;
		speed = 0;
		image_angle = 0;
		velocity = 5;
		shoot_delay = 0.2;
	}
	
	var _x = 25;
	var _sep = room_width / 12;
	repeat (11) {
		with (instance_create_layer(_x, 20, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader1;
			right = true;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 70, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader2;
			right = true;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 120, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader2;
			right = true;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 170, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader3;
			right = true;
		}
		_x += _sep;
	}
	
	_x = 25;
	repeat (11) {
		with (instance_create_layer(_x, 220, "Enemies", oSpaceInvader)) {
			sprite_index = sSpaceInvader3;
			right = true;
		}
		_x += _sep;
	}
}

function setup_pong_score() {
	with (instance_create_layer(32, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerPong;
		speed = 0;
		image_angle = 0;
		velocity = 10;
	}
	
	instance_create_layer(room_width - 32, room_height / 2, "Enemies", oPongPaddle);
	instance_create_layer(room_width - 60, room_height / 2, "Enemies", oPongBall);	
}

function setup_pong_goalkeeper() {
	with (instance_create_layer(32, room_height / 2, "Instances", oPlayer)) {
		sprite_index = sPlayerPong;
		speed = 0;
		image_angle = 0;
		velocity = 10;
	}
}

#endregion