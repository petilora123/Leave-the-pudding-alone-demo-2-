
if(other.can_jump) 
{
	sprite_index = spr_door_out;
	open = false;
	other.state = player_state_door;
}