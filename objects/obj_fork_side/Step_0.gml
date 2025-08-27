
if(distance_to_object(obj_player) <= 65)
{
	move = true;	
}

if(move)
{
	if(x <= (room_width / 2)){x = lerp(x, xstart + 75, 0.20);}
	if(x >= (room_width / 2)){x = lerp(x, xstart - 75, 0.20);}
}

if(obj_player.state == player_state_hidden)
{
	move = false;
	
	x = xstart;
	y = ystart;
}
