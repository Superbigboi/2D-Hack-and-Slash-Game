/// @description Insert description here
// You can write your code in this editor

switch (state){
	case "move":
	#region Move State
	if input.right{
		move_and_collide(run_speed,0);
		image_xscale = 1;
		sprite_index = s_skeleton_run;
	}
	if keyboard_check(vk_left){
		move_and_collide(-run_speed,0);
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
	if keyboard_check_pressed(vk_lcontrol){
		image_index = 0;
		state = "attack one";
	}
	#endregion
		break;
		
	case "roll":
	#region Roll State
	set_state_sprite(s_skeleton_roll, 0.5, 0);
	
	if image_xscale == 1{
		move_and_collide(roll_speed, 0);
	}
	if image_xscale == -1{
		move_and_collide(-roll_speed,0);
	}
	#endregion
		break;
	
	case "attack one":
	#region Attack One State 
	set_state_sprite(s_skeleton_attack_one,  0.5, 0) 
		
		if keyboard_check_pressed(vk_lcontrol) and animate_hit_frame_range(2,5){
		state = "attack two";
		}
		
	#endregion
	break;
	
		case "attack two":
	#region Attack Two State 
	set_state_sprite(s_skeleton_attack_two, 0.5, 0) 
		if keyboard_check_pressed(vk_lcontrol) and animate_hit_frame_range(2,4){
		state = "attack three";
		}
	#endregion
	break;
	
			case "attack three":
	#region Attack Three State 
	set_state_sprite(s_skeleton_attack_three, 0.5, 0) 
	#endregion
	break;
}

