
if(out)
{
	alpha = max(alpha - 0.05, 0);
}

if(alpha <= 0) instance_destroy();