var _xx = x
var _yy = y;

switch(image_index) {
	case 0:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_breakout_brick_debris, 100);
		}
		break;
		
	case 1:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_breakout_brick_1_debris, 100);
		}
		break;
		
	case 2:
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_breakout_brick_2_debris, 100);
		}
		break;
		
	case 3:	
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_breakout_brick_3_debris, 100);
		}
		break;
	
	case 4:	
		with (oParticles) {
			part_particles_create(part_system, _xx, _yy, part_type_breakout_brick_4_debris, 100);
		}
		break;
	
	default: break;
}