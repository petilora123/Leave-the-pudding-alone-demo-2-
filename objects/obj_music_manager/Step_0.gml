
if(snd_asset != target_snd_asset)
{
	if(audio_exists(target_snd_asset))
	{
		snd_inst = audio_play_sound(target_snd_asset,0,1);
		audio_sound_gain(snd_inst, 0, 0)
		fade_in_vol = 0;
	}
	snd_asset = target_snd_asset
}

if(audio_is_playing(snd_inst))
{
	if(fade_in_time > 0)
	{
		if(fade_in_vol < 1)
		{
		 fade_in_vol += 1/start_fade_in_time;
		}
		else
		{
		 fade_in_vol = 1;
		}
	}
	else
	{
	 fade_in_vol = 1;
	}
	audio_sound_gain(snd_inst, fade_in_vol, 60);
}