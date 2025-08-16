
if(other.can_jump && other.key != noone) 
{
	open = true; 
	
	other.state = player_state_door;
	
	if(instance_exists(other.key)) { other.key.mode = "dead"; }
}