

if(menu_snd_jump)
{
    audio_play_sound(snd_jump, 1, false);
    menu_snd_jump = false;
}

if(menu_snd_hurt)
{
    audio_play_sound(snd_hurt, 1, false);
    menu_snd_hurt = false;
}

if(menu_snd_shine)
{
    audio_play_sound(snd_shine, 1, false);
    menu_snd_shine = false;
}


if(audio_snd)
{
    if(!audio_is_playing(audio_snd_inst))
    {
        audio_snd_inst = audio_play_sound(audio_snd, 1, true);
    }
}
else
{
    if(audio_is_playing(audio_snd_inst))
    {
        audio_stop_sound(audio_snd_inst);
    }
}
