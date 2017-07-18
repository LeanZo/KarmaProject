//---Variaveis Locais-----------------
var espacamento = 0;
//-----------------------------

//---Verifica se o evento Step ja ocorreu---------------------------------------
if (!controle) {

//---Alinhamento do texto------
draw_set_halign(fa_center);
//-----------------------------

//---FUNDO---------------------
draw_set_color(Caller.dialogoFundoColor);
draw_rectangle(x - maxWidth/2 - 5, y - 20 * array_length_1d(resposta) - 5, x + maxWidth/2 + 5, y + string_height(resposta[array_length_1d(resposta) - 1]) + 5, false);
//-----------------------------

//---SHADER------------------------------------------
shader_set(Caller.dialogoBordaColor);
//---CANTOS-------------
draw_sprite(canto_SUP_ESQ, -1, x - maxWidth/2, y - 20 * array_length_1d(resposta));
draw_sprite(canto_SUP_DIR, -1, x + maxWidth/2, y - 20 * array_length_1d(resposta));
draw_sprite(canto_INF_ESQ, -1, x - maxWidth/2, y + string_height(resposta[array_length_1d(resposta) - 1]));
draw_sprite(canto_INF_DIR, -1, x + maxWidth/2, y + string_height(resposta[array_length_1d(resposta) - 1]));
//----------------------

//---MEIOS--------------
var x1 = x - maxWidth/2;
var x2 = x + maxWidth/2;
var y1 = y - 20 * array_length_1d(resposta);
var y2 = y + string_height(resposta[array_length_1d(resposta) - 1]);

for (var j = x1; j < x2; j++) {
draw_sprite(meio_SUP, -1, j, y - 20 * array_length_1d(resposta) - 10);
}
for (var j = x1; j < x2; j++) {
draw_sprite(meio_INF, -1, j, y + string_height(resposta[array_length_1d(resposta) - 1]) + 10);
}
for (var j = y1; j < y2; j++) {
draw_sprite(meio_DIR, -1, x + maxWidth/2 + 10, j);
}
for (var j = y1; j < y2; j++) {
draw_sprite(meio_ESQ, -1, x - maxWidth/2 - 10, j);
}
//----------------------
shader_reset();
//---------------------------------------------------
//---RESPOSTAS-----------------
for (var i = array_length_1d(resposta) - 1; i > -1; i--) {

draw_set_color(c_white);
draw_text(x, y - espacamento, resposta[i]);

respostaY[i] = (y - espacamento) + (string_height(resposta[i])/2); //Importante para os Triângulos
respostaWidth[i] = string_width(resposta[i]);                      //Importante para os Triângulos

espacamento += 20;
}
//-----------------------------

//---FRASE/PERGUNTA------------
draw_set_color(c_white);
draw_text(x, y - espacamento, frase);
//-----------------------------

//---Alinhamento padrão--------
draw_set_halign(fa_left);
//-----------------------------

//---Lógica dos Triângulos-----
if(keyboard_check_pressed(ord("W"))) {
	if(iTriangulo = 0) {
		iTriangulo = array_length_1d(resposta) - 1;
	} else {
		iTriangulo -= 1;
	}
} else if(keyboard_check_pressed(ord("S"))) {
	if(iTriangulo = array_length_1d(resposta) - 1) {
		iTriangulo = 0;
	} else {
		iTriangulo += 1;
	}
}
//-----------------------------

//---Desenha os Triângulos-----
var xWidth = respostaWidth[iTriangulo]/2;
draw_set_color(c_white);
draw_triangle(x - xWidth - 9, respostaY[iTriangulo] - 5, x - xWidth - 9, respostaY[iTriangulo] + 5, x - xWidth - 4, respostaY[iTriangulo],false);
draw_triangle(x + xWidth + 9, respostaY[iTriangulo] + 5, x + xWidth + 9, respostaY[iTriangulo] - 5, x + xWidth + 4, respostaY[iTriangulo],false);
//-----------------------------

//---Escolher a resposta e finalizar--------
if (keyboard_check_pressed(ord("E"))) {
	Caller.resposta = iTriangulo;
	obj_player.dialogando = false;
	instance_destroy();
}
//------------------------------------------



}
//-------------------------------------------------------------------------------