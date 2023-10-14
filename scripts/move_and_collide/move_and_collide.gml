// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_and_collide(){
	if not place_meeting(x+argument0, y , o_wall){
		x += argument0;
	}
	if not place_meeting(x, y+argument1, o_wall){
		y += argument1;
	}
}