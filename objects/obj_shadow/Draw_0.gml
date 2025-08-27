
with(obj_player)
{
	gpu_set_fog(true,c_black,1,1);
	draw_sprite_ext(sprite_index,image_index,x - (see * 5),y,xscale - 0.15,yscale - 0.15,angle,image_blend,0.2);
	gpu_set_fog(false,c_black,1,1);
}

with(obj_key)
{
	gpu_set_fog(true,c_black,1,1);
	draw_sprite_ext(sprite_index,image_index,x - 3,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha - 0.8);
	gpu_set_fog(false,c_black,1,1);
}

with(obj_par_obstacle)
{
	gpu_set_fog(true,c_black,1,1);
	draw_sprite_ext(sprite_index,image_index,x - 5,y,image_xscale - 0.1,image_yscale - 0.1,image_angle,image_blend,0.2);
	gpu_set_fog(false,c_black,1,1);
}

with(obj_door)
{
	gpu_set_fog(true,c_black,1,1);
	draw_sprite_ext(sprite_index,image_index,x - 8,y,image_xscale - 0.1,image_yscale - 0.1,image_angle,image_blend,0.2);
	gpu_set_fog(false,c_black,1,1);
}