global.destroyed_space_invaders_xxl++;

var _xx = x;
var _yy = y;

switch(sprite_index) {
	case sSpaceInvader1XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_1_debris, 500);	
		}
		break;
				
	case sSpaceInvader2XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_2_debris, 500);	
		}
		break;
		
	case sSpaceInvader3XXL:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_space_invader_3_debris, 500);	
		}
		break;

	default: break;
}

screenshake(60, 8, 0.4);