function set_state_sprite() {
	var new_sprite = argument0;
	var new_speed = argument1;
	var new_index = argument2;
	if sprite_index != new_sprite {
		sprite_index = new_sprite;
		image_speed = new_speed;
		image_index = new_index;
	}	
}image_index = 0;


// shits not working
// so use this
// and replace 
//		if sprite_index != the sprite at hand{ 
//		sprite_index = the same sprite at hand;
//		image_index = 0; 
//		image_speed = 0.6;
//		}