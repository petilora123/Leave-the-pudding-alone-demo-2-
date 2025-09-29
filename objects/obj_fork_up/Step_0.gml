
if(distance_to_object(obj_player) <= 65)
{
	move = true;	
}

if(move)
{
	y = lerp(y, ystart - 45, 0.25);
}

if(obj_player.state == player_state_hidden)
{
	move = false;
	
	x = xstart;
	y = ystart;
}
