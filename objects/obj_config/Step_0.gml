if (keyboard_check_pressed(vk_f12)) {
	
	if (interruptor) { //colocar fullscreen
		
		//setar o tamanho da viewport para o tamanho da resolução
		surface_resize(application_surface, displayW, displayH);
		
		//setar o tamanho da camera para não esticar a imagem
		camera_set_view_size(view_camera[0],defaultCameraW, newCameraH);
		
		//esconde o cursor do mouse
		window_set_cursor(cr_none);
		window_set_fullscreen(interruptor);
		interruptor = false;
	
	}else{ //tirar do fullscreen
		
		//setar o tamanho da viewport para o tamanho normal
		surface_resize(application_surface, defaultViewportW, defaultViewportH);
		
		//setar o tamanho da camera para o padrão
		camera_set_view_size(view_camera[0], defaultCameraW, defaultCameraH);
		
		//mostra o cursor
		window_set_cursor(cr_default);
		window_set_fullscreen(interruptor);
		interruptor = true;
	}
}