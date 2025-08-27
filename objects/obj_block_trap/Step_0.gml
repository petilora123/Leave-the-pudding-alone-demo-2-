

if(distance_to_object(obj_player) <= 50)
{
	move = true;
}

if(move) 
{
	image_xscale = approach(image_xscale,0,0.20);
}



if(obj_player.state == player_state_hidden)
{
	image_xscale = 1;
	move = false;
}
