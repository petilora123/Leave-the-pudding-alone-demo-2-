function piece_create(sprite)
{
	for(var i = 0;i < sprite_get_number(sprite);i++)
	{
		var _pieces = instance_create_layer(x, y, "FX", obj_pieces);
		
		_pieces.image_speed = 0;
		_pieces.image_index = i;
		_pieces.sprite_index = sprite;
	}
}