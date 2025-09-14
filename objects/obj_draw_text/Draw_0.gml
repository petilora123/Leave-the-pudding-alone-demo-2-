
var _middle_w = room_width / 2; 
var _middle_h = room_height / 2;

draw_set_font(fnt_msg);
draw_set_alpha(0.65);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

switch(room)
{
	case rm_01:
		draw_text(_middle_w, _middle_h, "Você consegue passar de sala?");
	break;
	case rm_02:
		draw_text(_middle_w, _middle_h, "hmm... que tal isso!");
	break;
	case rm_03:
		draw_text(_middle_w, _middle_h, "cuidado com surpresa...");
	break;
	case rm_04:
		draw_text(_middle_w, _middle_h, "tudo normal?!");
	break;
	case rm_05:
		draw_text(_middle_w, _middle_h, "bem facil");
	break;
	case rm_06:
		draw_text(_middle_w, _middle_h, "só um pulo");
	break;
	case rm_07:
		draw_text(_middle_w, _middle_h, "outra vez!?");
	break;
	case rm_08:
		draw_text(_middle_w, _middle_h, "olhe seus pés!");
	break;
	case rm_09:
		draw_text(_middle_w, _middle_h, "de novo?... outra vez");
	break;
	case rm_10:
		draw_text(_middle_w, _middle_h, "bem facil");
	break;
	case rm_11:
		draw_text(_middle_w, room_height / 1.75, "pense dentro dos textos!");
	break;
	
}

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_alpha(1);
draw_set_font(-1);