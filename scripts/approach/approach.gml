///@arg current_value
///@arg target_value
///@arg change_amoount
function approach(){
	var current_value = argument0;
	var target_value = argument1;
	var change_amount = argument2;

	if current_value < target_value{
		current_value += change_amount;
		current_Value = min(current_value, target_value);
	}
}