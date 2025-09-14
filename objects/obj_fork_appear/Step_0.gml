

if(distance_to_object(obj_player) <= 100)
{
	move = true;
}
else
{
	move = false;
}

if(move) 
{
	image_yscale = approach(image_yscale,1,0.20);
}
else
{
	image_yscale = approach(image_yscale,0,0.20);
}


if(obj_player.state == player_state_hidden)
{
	image_yscale = 0;
	move = false;
}

