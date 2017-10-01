///START SERVER

//Ask player for port
var port = real(get_string("Defina a porta:","7777"));

//Setup server, on success start game, on failure end the game.
if (htme_serverStart(port,10)) {
    room_goto(City);
} else {
    show_message("Não foi possivel iniciar o servidor! Verifique a conexão!");
    game_end();
}