
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
	
}

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_alpha(1);
draw_set_font(-1);