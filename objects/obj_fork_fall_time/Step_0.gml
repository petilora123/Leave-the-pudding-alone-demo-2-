
if(time > 0) time--;

if(time <= 0)
{
	move = true;	
}

if(move)
{
	vsp += 0.5;
}

if(obj_player.state == player_state_hidden)
{
	move = false;
	time = 60 * 4;
	
	x = xstart;
	y = ystart;
}
