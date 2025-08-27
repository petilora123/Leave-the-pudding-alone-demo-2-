
if(time > 0)
{
	time--;	
}

if(time <= 0)
{
	vsp += 0.4;
}


if(obj_player.state == player_state_hidden)
{
	time = 0;
	
	x = xstart;
	y = ystart;
}

x+=hsp;
y+=vsp;
