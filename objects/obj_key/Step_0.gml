
var _player = instance_place(x, y, obj_player);

if(desative == false)
{
	switch(mode)
	{
		case "ground":
			y = ystart + sin(current_time * 0.001) * 10;
		
			if(_player)
			{
				_player.key = id;
			
				target = _player;
				mode = "follow_player";
			}
		break;
	
		case "follow_player":
			y = lerp(y, target.y - 16, 0.20);
		
			x = lerp(x, target.x + (target.see * -32), 0.20);
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
	
		x = lerp(x,xstart,0.20);
		y = lerp(y,ystart,0.20);
		
		image_alpha = 1;
	
		mode = "ground";
	}
}
