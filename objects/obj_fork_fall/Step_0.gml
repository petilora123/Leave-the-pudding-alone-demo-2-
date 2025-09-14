
if(obj_player.x >= (room_width / 2))
{
	move = true;	
}

if(move)
{
	vsp += 0.6;
}

if(obj_player.state == player_state_hidden)
{
	move = false;
	vsp = 0;
	
	x = xstart;
	y = ystart;
}

y+=vsp;