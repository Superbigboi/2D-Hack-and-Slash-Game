///arg low
///arg high
function animate_hit_frame_range(){
	var low = argument0;
	var high = argument1;
	return image_index >= low and image_index <= high; 
}