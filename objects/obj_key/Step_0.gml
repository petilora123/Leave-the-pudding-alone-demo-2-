
var _player = instance_place(x, y, obj_player);

if(desative == false)
{
	switch(mode)
	{
		case "ground":
			y = ystart + sin(current_time * 0.001) * 10;
		
			if(_player && _player.state == player_state_free)
			{
				_player.key = id;
			
				target = _player;
				mode = "follow_player_up";
				
				obj_sfx.menu_snd_shine = true;
			}
		break;
	
		case "follow_player":
			y = lerp(y, target.y - 16, 0.20);
		
			x = lerp(x, target.x + (target.see * -32), 0.20);
		break;
		
		case "follow_player_up":
			y = lerp(y, target.y - 36, 0.20);
		
			x = lerp(x, target.x, 0.20);
			
			obj_player.state = player_state_key;
			
			d_time = true;
		break;
	
		case "dead":
			image_alpha -= 0.01;
		
			if(image_alpha <= 0) desative = true;
		break;
	}
}


if(instance_exists(obj_player))
{
	if(obj_player.state == player_state_dead)
	{
		x = lerp(x,xstart,0.20);
		y = lerp(y,ystart,0.20);
		
		mode = "ground";
	}
	else if(obj_player.state == player_state_hidden)
	{	
		desative = false;		
		d_time = false;
		time = 50;
	
		x = lerp(x,xstart,0.20);
		y = lerp(y,ystart,0.20);
		
		image_alpha = 1;
	
		mode = "ground";
	}
}

if(d_time)
{
	if(time > 0) time--;
	if(time <= 0) mode = "follow_player"; d_time = false;
}