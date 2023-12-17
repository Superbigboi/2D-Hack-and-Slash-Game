///@arg xspeed
///@arg yspeed
function move_and_collide(){
	if not place_meeting(x+argument0, y , o_wall){
		x += argument0;
	}
	if not place_meeting(x, y+argument1, o_wall){
		y += argument1;
	}
}