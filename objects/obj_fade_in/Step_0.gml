
if(in)
{
	alpha = min(alpha + 0.05, 1);
}

if(alpha >= 1 && fade == 0) 
{ 
	instance_create_layer(0,0,"transitions",obj_fade_out);
	
	fade = 1;
	
	instance_destroy();
}