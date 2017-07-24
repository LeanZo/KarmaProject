//---FUNDO--------------
draw_set_color(Caller.dialogoFundoColor);
draw_rectangle(x - string_width(frase[i])/2 - 5, y - 5, x + string_width(frase[i])/2 + 5, y + string_height(frase[i]) + 5, false);
//draw_rectangle(x - string_width(frase[i])/2 - 5, y, x + string_width(frase[i])/2 + 5, y + string_height(frase[i]), false);
//----------------------
shader_set(Caller.dialogoBordaColor);
//---CANTOS-------------
draw_sprite(canto_SUP_ESQ, -1, x - string_width(frase[i])/2, y);
draw_sprite(canto_SUP_DIR, -1, x + string_width(frase[i])/2, y);
draw_sprite(canto_INF_ESQ, -1, x - string_width(frase[i])/2, y + string_height(frase[i]));
draw_sprite(canto_INF_DIR, -1, x + string_width(frase[i])/2, y + string_height(frase[i]));
//----------------------
var xDistance = (x + string_width(frase[i])/2) - (x - string_width(frase[i])/2);
var x1 = x - string_width(frase[i])/2;
var x2 = x + string_width(frase[i])/2;
var y1 = y;
var y2 = y + string_height(frase[i]);
//---MEIOS--------------
for (var j = x1; j < x2; j++) {
draw_sprite(meio_SUP, -1, j, y - 10);
}
for (var j = x1; j < x2; j++) {
draw_sprite(meio_INF, -1, j, y + string_height(frase[i]) + 10);
}
for (var j = y1; j < y2; j++) {
draw_sprite(meio_DIR, -1, x + string_width(frase[i])/2 + 10, j);
}
for (var j = y1; j < y2; j++) {
draw_sprite(meio_ESQ, -1, x - string_width(frase[i])/2 - 10, j);
}
//----------------------
shader_reset();
//---FRASE--------------
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_KarmaSuture);
draw_text(x, y, frase[i]);
draw_set_halign(fa_left);
//----------------------