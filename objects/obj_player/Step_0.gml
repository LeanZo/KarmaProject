//dialogando impede o jogador de andar quando interagindo
if (!dialogando) {
	//---Codigo relacionado ao Skate----
	if (walkmode == "foot") {
		Movimentacao(); } else { MovimentacaoSk8();}
	//----------------------------------
} else {
	image_speed = 0;
	image_index = 0;	
}
	