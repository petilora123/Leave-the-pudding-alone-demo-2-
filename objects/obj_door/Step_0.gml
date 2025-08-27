

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
		sprite_index = spr_door_out;
		
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

}