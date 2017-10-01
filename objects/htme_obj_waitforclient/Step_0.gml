///Check if client is connected
if (htme_clientIsConnected()) {
    room_goto(City);
}
if (htme_clientConnectionFailed()) {
    show_message("Conexão falhou!");
    game_restart();
}