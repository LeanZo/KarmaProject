if (DEBUG) {
//---Controlar o relogio------------------------
if (!instance_exists(obj_timeControl)) {
	instance_create_layer(x, y, "lay_config", obj_timeControl);
}
//----------------------------------------------

//---Exibir camada 'Colisao'--------------------
layer_set_visible("Colisao", true);
//----------------------------------------------

//---Mudar FPS entre 60 e 30--------------------
if (keyboard_check_pressed(vk_numpad7))	{
	if (game_get_speed(gamespeed_fps) == 30) {
		game_set_speed(60, gamespeed_fps);
	} else {
		game_set_speed(30, gamespeed_fps);
	} 
}
//----------------------------------------------

//---Ligar/Desligar VSync-----------------------
if (keyboard_check_pressed(vk_numpad8))	{
	if (global.vsync) {
		display_reset(0, false);
		global.vsync = false;
	} else {
		display_reset(0, true);
		global.vsync = true;
	} 
}
//----------------------------------------------

} else {

//---Parar de Controlar o Relogio---------------
if (instance_exists(obj_timeControl)) {
	instance_destroy(obj_timeControl);
}
//----------------------------------------------

//---Ocultar camada 'Colisao'-------------------
layer_set_visible("Colisao", false);
//----------------------------------------------

}

if (keyboard_check_pressed(vk_f10)) {
	if(!DEBUG) {
		DEBUG = true;	
	} else {
		DEBUG = false;
	}
}

