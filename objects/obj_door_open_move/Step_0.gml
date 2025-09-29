

if(instance_exists(obj_player))
{
	if(obj_player.state == player_state_hidden)
	{
		image_speed = 0;
		image_index = 0;
		
		x = xstart;
		
		move = false;
	}

	if(distance_to_object(obj_player) <= 75 && move == false)
	{
		move = true;
	}
	
	if(move)
	{
		x = lerp(x, xstart + 50, 0.25);
	}
}
