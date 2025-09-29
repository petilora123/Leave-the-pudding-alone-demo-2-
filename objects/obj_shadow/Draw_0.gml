if(!surface_exists(surf))
{
    surf = surface_create(room_width * 1.5, room_height * 1.5);
}
else
{
    surface_set_target(surf);
    
    draw_clear_alpha(c_black, 0.9);
	
	gpu_set_blendmode(bm_subtract);
    
    with(obj_luz)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
    }
	
	if(room != rm_10)
	{
		with(obj_player)
	    {
	        draw_sprite_ext(spr_light, 0, x, y - (sprite_height / 2), 2, 2, 0, c_white, 1);
	    }
	
		with(obj_par_door)
	    {
	        draw_sprite_ext(spr_light, 0, x, y - (sprite_height / 2), 3.5, 3.5, 0, c_white, 1);
	    }
	}
	
	gpu_set_blendmode(bm_normal);
    
    surface_reset_target();
    
    draw_surface(surf, 0, 0);
}
