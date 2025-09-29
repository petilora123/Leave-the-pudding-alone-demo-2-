

if(instance_exists(obj_player))
{
	if(obj_player.state == player_state_free)
	{
		over = false;
	}
	if(obj_player.state == player_state_hidden)
	{
		image_speed = 0;
		image_index = 0;
		x = xstart;
		y = ystart;
	}
	if(obj_player.state != player_state_door)
	{
		y+=0.5;
	}

}


if(y>=room_height && over == false) 
{
	with(obj_player){ dead(); }
	over = true;
}