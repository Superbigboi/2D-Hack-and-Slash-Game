function set_state_sprite(_sprite, _speed, _index ) {
	if sprite_index != _sprite {
		sprite_index = _sprite;
		image_speed = _speed;	
		image_index = _index;
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