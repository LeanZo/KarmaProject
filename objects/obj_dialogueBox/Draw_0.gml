//---FUNDO--------------
draw_set_color(c_gray);
draw_rectangle(x - string_width(frase[i])/2, y, x + string_width(frase[i])/2, y + string_height(frase[i]), false);
//----------------------

//---FRASE--------------
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x, y, frase[i]);
draw_set_halign(fa_left);
//----------------------