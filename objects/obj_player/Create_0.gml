
#region movement
hsp = 0;
vsp = 0;

colls = [layer_tilemap_get_id("tile_wall"),obj_block,obj_block_not_visible];

move_spd_max = 6;
move_spd = 0;
move_dir = 0;

acc = 0.3;
dcc = 0.35;

inclination = 10;

can_move = 0;
#endregion

#region jump and grav
ground = false;
can_jump = 0;
has_jump = 0;
jump_spd = 12;
grav = 0.6;

coyote_time = 6;
cur_time = 0;
#endregion

#region draw
xscale = 1; 
yscale = 1; 

see = 1;

angle = 0;

inclination = 10;

change_sprite = function(sprite)
{
	if(sprite_index == sprite) return 0;
	
	image_index = 0;
	
	sprite_index = sprite;
}
#endregion

#region door and keys
key = noone;

#endregion

#region dead
dead_x = 0;
dead_y = 0;

dead = function()
{
	image_index = 0;
	
	dead_x = x;
	dead_y = y;
	
	state = player_state_dead;
}

#endregion

state = player_state_free;