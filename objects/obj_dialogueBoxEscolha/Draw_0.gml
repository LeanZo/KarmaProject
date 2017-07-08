//---Variaveis Locais-----------------
var espacamento = 0;
//-----------------------------

//---Verifica se o evento Step ja ocorreu---------------------------------------
if (!controle) {

//---Alinhamento do texto------
draw_set_halign(fa_center);
//-----------------------------

//---FUNDO---------------------
draw_set_color(c_gray);
draw_rectangle(x - maxWidth/2, y - 20 * array_length_1d(resposta), x + maxWidth/2, y + string_height(resposta[array_length_1d(resposta) - 1]), false);
//-----------------------------

//---RESPOSTAS-----------------
for (var i = array_length_1d(resposta) - 1; i > -1; i--) {

draw_set_color(c_white);
draw_text(x, y - espacamento, resposta[i]);

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

}
//-------------------------------------------------------------------------------



