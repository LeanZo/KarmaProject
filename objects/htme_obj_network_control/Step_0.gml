///Check if engine running
if (!htme_isStarted()) {
    show_message("Conexão Perdida! Voltando ao menu principal...");
    game_restart();
	//instance_destroy();
}