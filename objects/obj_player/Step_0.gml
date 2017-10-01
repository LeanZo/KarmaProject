if(!obj_config.jogoPausado) {


//dialogando impede o jogador de andar quando interagindo
//if(self.pressed_DIR || self.pressed_DOWN || self.pressed_ESQ || self.pressed_SHIFT || self.pressed_UP) {
if (!dialogando) {

	//---Codigo relacionado ao Skate----
	if (walkmode == "foot") {
		Movimentacao(); } else { MovimentacaoSk8();}
	//----------------------------------
} else {
	image_speed = 0;
	image_index = 0;	
}

} else {
	image_speed = 0;

}