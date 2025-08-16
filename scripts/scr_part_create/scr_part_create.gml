
function part_create(_x, _y, _layer, _obj, _num_iterations)
{	
	for(var i = 0; i < irandom_range(_num_iterations[0],_num_iterations[1]); i++)
	{		
		instance_create_layer(_x, _y, _layer, _obj);
	}
}