// Dialogue BOX

var frase = argument0;
//var spriteDraw = object_get_sprite(object_index);
var boxHeigth = string_height(frase);
var boxWidth = string_width(frase);

//draw_sprite(spriteDraw, 1, x, y);
draw_set_color(c_gray);
draw_rectangle(x - 10, y - boxHeigth, x + boxWidth, y + 10, false);

draw_set_color(c_white);
draw_text(x - 10, y - boxHeigth, frase);