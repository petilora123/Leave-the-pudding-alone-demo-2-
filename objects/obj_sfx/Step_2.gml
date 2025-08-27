if(menu_snd_jump == true)
{
	audio_play_sound(snd_jump,0,0);
	menu_snd_jump = false;
}

if(audio_snd == true && !audio_is_playing(audio_snd_inst))
{
	audio_snd_inst = audio_play_sound(snd_jump,0,0);
}

if(audio_snd == false && audio_is_playing(audio_snd_inst))
{
	audio_stop_sound(audio_snd_inst);
	game_end();
}

audio_snd = false;