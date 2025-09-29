
draw_set_alpha(alpha);

draw_set_color(c_black);

draw_rectangle(0,0,room_width * 2,room_height * 2,false);

draw_set_font(fnt_msg);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

var room_name = room_get_name(room);
var room_number = real(string_delete(room_name,1,3));

var rm = "Level " + string(room_number);

draw_text_transformed(room_width / 2, room_height / 2, rm, scale, scale, sin(current_time * freq) * 8);

draw_set_halign(-1);
draw_set_valign(-1);

draw_set_font(-1);

draw_set_alpha(1);