
if(move)
{
	vsp += 0.5;
}

if(obj_player.state == player_state_hidden)
{
	move = false;
	vsp = 0;
	al = true;

	y = ystart;
}

if(al) alarm[0] = time; al = false;

y+=vsp;
