

if(open)
{
	if(image_index < image_number - 1) 
	{
		image_speed = 1;
	}
	else if(image_index >= image_number - 1)
	{
		image_index = image_number - 1;
		image_speed = 0;
		
		open = false;
	}
}

if(instance_exists(obj_player))
{
	if(obj_player.state == player_state_hidden)
	{
		image_speed = 0;
		image_index = 0;

		open = false;
	}

	if(obj_player.state == player_state_free)
	{
		if(image_index >= image_number - 1 && image_speed == 0)
		{
			obj_player.state = player_state_door;
			
			exit;
		}
	}
}