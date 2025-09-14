
if(obj_player.x >= (room_width / 2))
{
	move = true;
}

if(move)
{
	hsp = 4;
}

if(obj_player.state == player_state_hidden)
{
	hsp = 0;
	move = 0;
	
	x = xstart;
	y = ystart;
}

x+=hsp;
y+=vsp;
