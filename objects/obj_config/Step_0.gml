if (keyboard_check_pressed(vk_f12)) {
	//colocar fullscreen
	if (interruptor) {
		//setar o tamanho da viewport para o tamanho da resolução
		view_set_wport(view_camera[0], displayW);
		view_set_hport(view_camera[0], displayH);
		//esconde o cursor do mouse
		window_set_cursor(cr_none);
		window_set_fullscreen(interruptor);
		interruptor = false;
	}else{//tirar do fullscreen
		//setar o tamanho da viewport para o tamanho normal
		view_set_wport(view_camera[0], defaultViewportW);
		view_set_hport(view_camera[0], defaultViewportH);
		//mostra o cursor
		window_set_cursor(cr_default);
		window_set_fullscreen(interruptor);
		interruptor = true;
	}
}