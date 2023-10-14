/// @description Insert description here
// You can write your code in this editor

switch (state){
	case "move":
	#region Move State
	if keyboard_check(vk_right){
		move_and_collide(4,0);
		image_xscale = 1;
		sprite_index = s_skeleton_run;
	}
	if keyboard_check(vk_left){
		move_and_collide(-4,0);
		image_xscale = -1;
		sprite_index = s_skeleton_run;
	}
	
	if not keyboard_check(vk_right) and not keyboard_check(vk_left){

		sprite_index = s_skeleton_idle;
	}
	if keyboard_check_pressed(vk_space){
		state = "roll";
		image_index = 0;
	}
	if keyboard_check_pressed(vk_lshift){
		image_index = 0;
		state = "attack one";
	}
	#endregion
		break;
		
	case "roll":
	#region Roll State
	sprite_index = s_skeleton_roll;
	
	if image_xscale == 1 and not place_meeting(x+6, y, o_wall){
		x+=6;
	}
	if image_xscale == -1 and not place_meeting(x-6,y,o_wall){
		x-=6;
	}
	#endregion
		break;
	
	case "attack one":
	#region Attack One State 
		sprite_index  = s_skeleton_attack_one;
		
	#endregion
	break;
}
