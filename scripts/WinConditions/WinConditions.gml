///@desc Check if all objects have been destroyed, if they have, start a new game.
///@arg Obj
function win_condition_destroy(_obj) {
	if (!instance_exists(_obj)) win();
	
	if timer <= 0 && global.win_game == false gameover();
}

///@desc Check if the timer has elapsed, if it has, start a new game.
function win_condition_timer(_timer) {
	if (alarm[0] == -1) alarm[0] = room_speed * _timer;
}

///@desc Check if the player scored a goal, if it did, start a new game.
function win_condition_pong_score() {
	if (instance_exists(oPongBall) && oPongBall.x > room_width) {
		global.goals_scored = global.goals_scored + 1 / room_speed;
		win();
	}
	
	if timer <= 0 && global.win_game == false gameover();
}

function win_condition_pong_goalkeeper(_timer) {
	if (alarm[0] == -1) alarm[0] = room_speed * _timer;
	
	// Spawn pong balls
	if (alarm[1] == -1) alarm[1] = room_speed * 1;
}

function gameover() {
	if (global.win_game == false) {
		global.game_over = true;
	
		instance_destroy(oPlayer);
		screenshake(30, 5, 0.5);
		array_delete(global.previous_games, 0, 3);
	}
}

function win() {
	global.win_game = true;
}