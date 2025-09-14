
if(out)
{
	alpha = max(alpha - 0.05, 0);
	scale = max(scale - 0.05, 0);
}
else
{
	scale = min(scale + 0.05, 1);
}

freq = approach(freq, 0.01, 0.001);

if(alpha <= 0) instance_destroy();