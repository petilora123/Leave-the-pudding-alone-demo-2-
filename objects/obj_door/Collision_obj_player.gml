
if(other.can_jump && other.key != noone) 
{
	open = true; 
	if(instance_exists(other.key)) { other.key.mode = "dead"; }
}